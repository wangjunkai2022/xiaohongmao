package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.mlkit.common.MlKitException;
import com.qennnsad.aknkaksd.util.a1;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;
import org.bouncycastle.math.Primes;

/* compiled from: ExtensionDescriptor.java */
@g(tags = {19, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, h0.G, h0.I, 131, 132, 133, h0.Q, h0.J, 136, 137, h0.H, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, a1.f54532a, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, h0.K, 173, 174, 175, 176, 177, 178, 179, com.facebook.imagepipeline.common.e.f12205e, 181, 182, 183, 184, 185, 186, 187, 188, a0.f22979w, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, 203, 204, MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR, MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR, MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD, com.facebook.imageutils.c.f13394i, 209, 210, Primes.SMALL_FACTOR_LIMIT, 212, 213, 214, com.facebook.imageutils.c.f13395j, com.facebook.imageutils.c.f13388c, com.facebook.imageutils.c.f13390e, com.facebook.imageutils.c.f13391f, 219, 220, 221, 222, 223, 224, com.facebook.imageutils.c.f13392g, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, a0.A, 241, 242, 243, 244, 245, 246, 247, 248, 249, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 251, 252, 253})
/* loaded from: classes2.dex */
public class i extends b {

    /* renamed from: f  reason: collision with root package name */
    private static Logger f36822f = Logger.getLogger(i.class.getName());

    /* renamed from: e  reason: collision with root package name */
    byte[] f36823e;

    static int[] g() {
        int[] iArr = new int[148];
        for (int i4 = 106; i4 < 254; i4++) {
            int i10 = i4 - 106;
            f36822f.finest("pos:" + i10);
            iArr[i10] = i4;
        }
        return iArr;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        if (a() > 0) {
            byte[] bArr = new byte[this.f36787b];
            this.f36823e = bArr;
            byteBuffer.get(bArr);
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ExtensionDescriptor");
        sb.append("{bytes=");
        byte[] bArr = this.f36823e;
        sb.append(bArr == null ? "null" : com.coremedia.iso.e.b(bArr));
        sb.append('}');
        return sb.toString();
    }
}
