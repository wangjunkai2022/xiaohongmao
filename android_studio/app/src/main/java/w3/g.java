package w3;

import java.util.Arrays;

/* compiled from: ScalingMatrix.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public f[] f94386a;

    /* renamed from: b  reason: collision with root package name */
    public f[] f94387b;

    public String toString() {
        StringBuilder sb = new StringBuilder("ScalingMatrix{ScalingList4x4=");
        f[] fVarArr = this.f94386a;
        sb.append(fVarArr == null ? null : Arrays.asList(fVarArr));
        sb.append("\n");
        sb.append(", ScalingList8x8=");
        f[] fVarArr2 = this.f94387b;
        sb.append(fVarArr2 != null ? Arrays.asList(fVarArr2) : null);
        sb.append("\n");
        sb.append('}');
        return sb.toString();
    }
}
