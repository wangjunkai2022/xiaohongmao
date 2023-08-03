package com.googlecode.mp4parser;

import org.aspectj.lang.NoAspectBoundException;

/* compiled from: RequiresParseDetailAspect.java */
@i8.f
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static /* synthetic */ Throwable f36966a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ j f36967b = null;

    static {
        try {
            a();
        } catch (Throwable th) {
            f36966a = th;
        }
    }

    private static /* synthetic */ void a() {
        f36967b = new j();
    }

    public static j b() {
        j jVar = f36967b;
        if (jVar != null) {
            return jVar;
        }
        throw new NoAspectBoundException("com.googlecode.mp4parser.RequiresParseDetailAspect", f36966a);
    }

    public static boolean d() {
        return f36967b != null;
    }

    @i8.g("this(com.googlecode.mp4parser.AbstractBox) && ((execution(public * * (..)) && !( execution(* parseDetails()) || execution(* getNumOfBytesToFirstChild()) || execution(* getType()) || execution(* isParsed()) || execution(* getHeader(*)) || execution(* parse()) || execution(* getBox(*)) || execution(* getSize()) || execution(* getOffset()) || execution(* parseDetails()) || execution(* _parseDetails(*)) || execution(* parse(*,*,*,*)) || execution(* getIsoFile()) || execution(* getParent()) || execution(* setParent(*)) || execution(* getUserType()) || execution(* setUserType(*))) && !@annotation(com.googlecode.mp4parser.annotations.DoNotParseDetail)) || @annotation(com.googlecode.mp4parser.annotations.ParseDetail))")
    public void c(org.aspectj.lang.c cVar) {
        if (cVar.a() instanceof a) {
            if (((a) cVar.a()).j()) {
                return;
            }
            ((a) cVar.a()).m();
            return;
        }
        throw new RuntimeException("Only methods in subclasses of " + a.class.getName() + " can  be annotated with ParseDetail");
    }
}
