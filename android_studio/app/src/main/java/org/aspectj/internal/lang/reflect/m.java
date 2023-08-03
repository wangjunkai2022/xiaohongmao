package org.aspectj.internal.lang.reflect;

import k8.w;
import k8.x;
import org.aspectj.lang.reflect.PerClauseKind;

/* compiled from: PointcutBasedPerClauseImpl.java */
/* loaded from: classes4.dex */
public class m extends l implements w {

    /* renamed from: b  reason: collision with root package name */
    private final x f90988b;

    /* compiled from: PointcutBasedPerClauseImpl.java */
    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f90989a;

        static {
            int[] iArr = new int[PerClauseKind.values().length];
            f90989a = iArr;
            try {
                iArr[PerClauseKind.PERCFLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f90989a[PerClauseKind.PERCFLOWBELOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f90989a[PerClauseKind.PERTARGET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f90989a[PerClauseKind.PERTHIS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public m(PerClauseKind perClauseKind, String str) {
        super(perClauseKind);
        this.f90988b = new n(str);
    }

    @Override // k8.w
    public x b() {
        return this.f90988b;
    }

    @Override // org.aspectj.internal.lang.reflect.l
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int i4 = a.f90989a[getKind().ordinal()];
        if (i4 == 1) {
            stringBuffer.append("percflow(");
        } else if (i4 == 2) {
            stringBuffer.append("percflowbelow(");
        } else if (i4 == 3) {
            stringBuffer.append("pertarget(");
        } else if (i4 == 4) {
            stringBuffer.append("perthis(");
        }
        stringBuffer.append(this.f90988b.a());
        stringBuffer.append(")");
        return stringBuffer.toString();
    }
}
