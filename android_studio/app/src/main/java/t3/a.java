package t3;

import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.x0;
import com.coremedia.iso.f;
import com.google.android.exoplayer2.i;
import com.googlecode.mp4parser.authoring.b;
import com.googlecode.mp4parser.authoring.d;
import com.googlecode.mp4parser.e;
import com.googlecode.mp4parser.g;
import com.googlecode.mp4parser.util.m;
import java.io.File;
import java.io.IOException;

/* compiled from: MovieCreator.java */
/* loaded from: classes2.dex */
public class a {
    public static d a(e eVar) throws IOException {
        f fVar = new f(eVar);
        d dVar = new d();
        for (f1 f1Var : fVar.K().h(f1.class)) {
            x0 x0Var = (x0) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schm[0]");
            if (x0Var != null && (x0Var.v().equals(i.E1) || x0Var.v().equals(i.F1))) {
                dVar.a(new b(String.valueOf(eVar.toString()) + "[" + f1Var.L().C() + "]", f1Var, new f[0]));
            } else {
                dVar.a(new com.googlecode.mp4parser.authoring.e(String.valueOf(eVar.toString()) + "[" + f1Var.L().C() + "]", f1Var, new f[0]));
            }
        }
        dVar.h(fVar.K().J().y());
        return dVar;
    }

    public static d b(String str) throws IOException {
        return a(new g(new File(str)));
    }
}
