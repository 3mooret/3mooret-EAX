#pragma once
#include "../equalizer/biquad.hpp"
#include "../equalizer/filter_design.hpp"

namespace mix {

// Bass and treble of one mixer strip: a low shelf at 120 Hz and a high shelf at 6 kHz.
struct StripTone {
    eqb::Biquad lowL, lowR, highL, highR;
    double fs = 48000.0, bass = 0.0, treble = 0.0;
    bool primed = false;

    void prepare(double f) {
        fs = f;
        bass = treble = 0.0;
        primed = false;
        for (eqb::Biquad* q : {&lowL, &lowR, &highL, &highR}) { q->identity(); q->reset(); }
    }
    void set(double bassDb, double trebleDb) {
        if (primed && bassDb == bass && trebleDb == treble) return;
        if (!primed || (bass == 0.0 && bassDb != 0.0)) { lowL.reset(); lowR.reset(); }
        if (!primed || (treble == 0.0 && trebleDb != 0.0)) { highL.reset(); highR.reset(); }
        primed = true;
        bass = bassDb;
        treble = trebleDb;
        eqb::lowShelf(lowL, fs, 120.0, bass);
        lowR.shape(lowL);
        eqb::highShelf(highL, fs, 6000.0, treble);
        highR.shape(highL);
    }
    inline void process(float& l, float& r) {
        if (bass != 0.0) { l = lowL.run(l); r = lowR.run(r); }
        if (treble != 0.0) { l = highL.run(l); r = highR.run(r); }
    }
    inline float run(float x) {
        if (bass != 0.0) x = lowL.run(x);
        if (treble != 0.0) x = highL.run(x);
        return x;
    }
};

}  // namespace mix
