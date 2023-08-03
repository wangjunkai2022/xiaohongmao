package u3;

import com.coremedia.iso.c;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.e;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: ActionMessageFormat0SampleEntryBox.java */
/* loaded from: classes2.dex */
public class a extends com.coremedia.iso.boxes.sampleentry.a {

    /* renamed from: o  reason: collision with root package name */
    public static final String f94001o = "amf0";

    public a() {
        super(f94001o);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(I());
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.position(6);
        i.f(allocate, this.f10318n);
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        A(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long E = E() + 8;
        return E + ((this.f36436l || E >= KSYMediaMeta.AV_CH_WIDE_RIGHT) ? 16 : 8);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void p(e eVar, ByteBuffer byteBuffer, long j4, c cVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        eVar.read(allocate);
        allocate.position(6);
        this.f10318n = g.i(allocate);
        G(eVar, j4 - 8, cVar);
    }
}
