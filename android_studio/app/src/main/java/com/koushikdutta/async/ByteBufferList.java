package com.koushikdutta.async;

import android.annotation.TargetApi;
import android.os.Looper;
import com.koushikdutta.async.util.ArrayDeque;
import com.koushikdutta.async.util.Charsets;
import io.sentry.g4;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.PriorityQueue;

@TargetApi(9)
/* loaded from: classes3.dex */
public class ByteBufferList {

    /* renamed from: d  reason: collision with root package name */
    static PriorityQueue<ByteBuffer> f44235d = new PriorityQueue<>(8, new Reclaimer());

    /* renamed from: e  reason: collision with root package name */
    private static int f44236e = 1048576;

    /* renamed from: f  reason: collision with root package name */
    public static int f44237f = 262144;

    /* renamed from: g  reason: collision with root package name */
    static int f44238g = 0;

    /* renamed from: h  reason: collision with root package name */
    static int f44239h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final Object f44240i = new Object();

    /* renamed from: j  reason: collision with root package name */
    public static final ByteBuffer f44241j = ByteBuffer.allocate(0);

    /* renamed from: a  reason: collision with root package name */
    ArrayDeque<ByteBuffer> f44242a = new ArrayDeque<>();

    /* renamed from: b  reason: collision with root package name */
    ByteOrder f44243b = ByteOrder.BIG_ENDIAN;

    /* renamed from: c  reason: collision with root package name */
    private int f44244c = 0;

    /* loaded from: classes3.dex */
    static class Reclaimer implements Comparator<ByteBuffer> {
        Reclaimer() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
            if (byteBuffer.capacity() == byteBuffer2.capacity()) {
                return 0;
            }
            return byteBuffer.capacity() > byteBuffer2.capacity() ? 1 : -1;
        }
    }

    public ByteBufferList() {
    }

    private ByteBuffer J(int i4) {
        ByteBuffer byteBuffer;
        if (P() >= i4) {
            ByteBuffer peek = this.f44242a.peek();
            while (peek != null && !peek.hasRemaining()) {
                M(this.f44242a.remove());
                peek = this.f44242a.peek();
            }
            if (peek == null) {
                return f44241j;
            }
            if (peek.remaining() >= i4) {
                return peek.order(this.f44243b);
            }
            ByteBuffer y9 = y(i4);
            y9.limit(i4);
            byte[] array = y9.array();
            int i10 = 0;
            loop1: while (true) {
                byteBuffer = null;
                while (i10 < i4) {
                    byteBuffer = this.f44242a.remove();
                    int min = Math.min(i4 - i10, byteBuffer.remaining());
                    byteBuffer.get(array, i10, min);
                    i10 += min;
                    if (byteBuffer.remaining() == 0) {
                        break;
                    }
                }
                M(byteBuffer);
            }
            if (byteBuffer != null && byteBuffer.remaining() > 0) {
                this.f44242a.addFirst(byteBuffer);
            }
            this.f44242a.addFirst(y9);
            return y9.order(this.f44243b);
        }
        throw new IllegalArgumentException("count : " + P() + "/" + i4);
    }

    public static void M(ByteBuffer byteBuffer) {
        PriorityQueue<ByteBuffer> u9;
        if (byteBuffer == null || byteBuffer.isDirect() || byteBuffer.arrayOffset() != 0 || byteBuffer.array().length != byteBuffer.capacity() || byteBuffer.capacity() < 8192 || byteBuffer.capacity() > f44237f || (u9 = u()) == null) {
            return;
        }
        synchronized (f44240i) {
            while (f44238g > f44236e && u9.size() > 0 && u9.peek().capacity() < byteBuffer.capacity()) {
                f44238g -= u9.remove().capacity();
            }
            if (f44238g > f44236e) {
                return;
            }
            byteBuffer.position(0);
            byteBuffer.limit(byteBuffer.capacity());
            f44238g += byteBuffer.capacity();
            u9.add(byteBuffer);
            f44239h = Math.max(f44239h, byteBuffer.capacity());
        }
    }

    private static boolean N(ByteBuffer byteBuffer) {
        Iterator<ByteBuffer> it = f44235d.iterator();
        while (it.hasNext()) {
            if (it.next() == byteBuffer) {
                return true;
            }
        }
        return false;
    }

    public static void R(int i4) {
        f44237f = i4;
    }

    public static void S(int i4) {
        f44236e = i4;
    }

    public static void X(OutputStream outputStream, ByteBuffer byteBuffer) throws IOException {
        byte[] array;
        int arrayOffset;
        int remaining;
        if (byteBuffer.isDirect()) {
            array = new byte[byteBuffer.remaining()];
            arrayOffset = 0;
            remaining = byteBuffer.remaining();
            byteBuffer.get(array);
        } else {
            array = byteBuffer.array();
            arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            remaining = byteBuffer.remaining();
        }
        outputStream.write(array, arrayOffset, remaining);
    }

    private void f(int i4) {
        if (P() >= 0) {
            this.f44244c += i4;
        }
    }

    public static ByteBuffer g(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        return (ByteBuffer) y(byteBuffer.remaining()).put(byteBuffer.duplicate()).flip();
    }

    private static PriorityQueue<ByteBuffer> u() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null || Thread.currentThread() != mainLooper.getThread()) {
            return f44235d;
        }
        return null;
    }

    public static ByteBuffer y(int i4) {
        PriorityQueue<ByteBuffer> u9;
        ByteBuffer remove;
        if (i4 <= f44239h && (u9 = u()) != null) {
            synchronized (f44240i) {
                do {
                    if (u9.size() > 0) {
                        remove = u9.remove();
                        if (u9.size() == 0) {
                            f44239h = 0;
                        }
                        f44238g -= remove.capacity();
                    }
                } while (remove.capacity() < i4);
                return remove;
            }
        }
        return ByteBuffer.allocate(Math.max(8192, i4));
    }

    public static void z(ByteBuffer[] byteBufferArr, int i4) {
        int i10;
        PriorityQueue<ByteBuffer> u9 = u();
        int i11 = 0;
        if (u9 != null) {
            synchronized (f44240i) {
                i10 = 0;
                while (u9.size() > 0 && i11 < i4 && i10 < byteBufferArr.length - 1) {
                    ByteBuffer remove = u9.remove();
                    f44238g -= remove.capacity();
                    i11 += Math.min(i4 - i11, remove.capacity());
                    byteBufferArr[i10] = remove;
                    i10++;
                }
            }
        } else {
            i10 = 0;
        }
        if (i11 < i4) {
            byteBufferArr[i10] = ByteBuffer.allocate(Math.max(8192, i4 - i11));
            i10++;
        }
        while (i10 < byteBufferArr.length) {
            byteBufferArr[i10] = f44241j;
            i10++;
        }
    }

    public ByteBufferList A(ByteOrder byteOrder) {
        this.f44243b = byteOrder;
        return this;
    }

    public ByteOrder B() {
        return this.f44243b;
    }

    public byte C() {
        return J(1).get(this.f44242a.peekFirst().position());
    }

    public byte[] D(int i4) {
        byte[] bArr = new byte[i4];
        J(i4).get(bArr, this.f44242a.peekFirst().position(), i4);
        return bArr;
    }

    public int E() {
        return J(4).getInt(this.f44242a.peekFirst().position());
    }

    public long F() {
        return J(8).getLong(this.f44242a.peekFirst().position());
    }

    public short G() {
        return J(2).getShort(this.f44242a.peekFirst().position());
    }

    public String H() {
        return I(null);
    }

    public String I(Charset charset) {
        byte[] array;
        int arrayOffset;
        int remaining;
        if (charset == null) {
            charset = Charsets.f45143b;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<ByteBuffer> it = this.f44242a.iterator();
        while (it.hasNext()) {
            ByteBuffer next = it.next();
            if (next.isDirect()) {
                array = new byte[next.remaining()];
                arrayOffset = 0;
                remaining = next.remaining();
                next.get(array);
            } else {
                array = next.array();
                arrayOffset = next.arrayOffset() + next.position();
                remaining = next.remaining();
            }
            sb.append(new String(array, arrayOffset, remaining, charset));
        }
        return sb.toString();
    }

    public String K() {
        return L(null);
    }

    public String L(Charset charset) {
        String I = I(charset);
        O();
        return I;
    }

    public void O() {
        while (this.f44242a.size() > 0) {
            M(this.f44242a.remove());
        }
        this.f44244c = 0;
    }

    public int P() {
        return this.f44244c;
    }

    public ByteBuffer Q() {
        ByteBuffer remove = this.f44242a.remove();
        this.f44244c -= remove.remaining();
        return remove;
    }

    public int T() {
        return this.f44242a.size();
    }

    public ByteBufferList U(int i4) {
        m(null, 0, i4);
        return this;
    }

    public void V() {
        System.out.println(H());
    }

    public void W() {
        J(0);
    }

    public ByteBufferList a(ByteBufferList byteBufferList) {
        byteBufferList.j(this);
        return this;
    }

    public ByteBufferList b(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            M(byteBuffer);
            return this;
        }
        f(byteBuffer.remaining());
        if (this.f44242a.size() > 0) {
            ByteBuffer last = this.f44242a.getLast();
            if (last.capacity() - last.limit() >= byteBuffer.remaining()) {
                last.mark();
                last.position(last.limit());
                last.limit(last.capacity());
                last.put(byteBuffer);
                last.limit(last.position());
                last.reset();
                M(byteBuffer);
                W();
                return this;
            }
        }
        this.f44242a.add(byteBuffer);
        W();
        return this;
    }

    public ByteBufferList c(ByteBufferList... byteBufferListArr) {
        for (ByteBufferList byteBufferList : byteBufferListArr) {
            byteBufferList.j(this);
        }
        return this;
    }

    public ByteBufferList d(ByteBuffer... byteBufferArr) {
        for (ByteBuffer byteBuffer : byteBufferArr) {
            b(byteBuffer);
        }
        return this;
    }

    public void e(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            M(byteBuffer);
            return;
        }
        f(byteBuffer.remaining());
        if (this.f44242a.size() > 0) {
            ByteBuffer first = this.f44242a.getFirst();
            if (first.position() >= byteBuffer.remaining()) {
                first.position(first.position() - byteBuffer.remaining());
                first.mark();
                first.put(byteBuffer);
                first.reset();
                M(byteBuffer);
                return;
            }
        }
        this.f44242a.addFirst(byteBuffer);
    }

    public byte h() {
        byte b10 = J(1).get();
        this.f44244c--;
        return b10;
    }

    public ByteBufferList i(int i4) {
        ByteBufferList byteBufferList = new ByteBufferList();
        k(byteBufferList, i4);
        return byteBufferList.A(this.f44243b);
    }

    public void j(ByteBufferList byteBufferList) {
        k(byteBufferList, P());
    }

    public void k(ByteBufferList byteBufferList, int i4) {
        if (P() >= i4) {
            int i10 = 0;
            while (true) {
                if (i10 >= i4) {
                    break;
                }
                ByteBuffer remove = this.f44242a.remove();
                int remaining = remove.remaining();
                if (remaining == 0) {
                    M(remove);
                } else {
                    int i11 = remaining + i10;
                    if (i11 > i4) {
                        int i12 = i4 - i10;
                        ByteBuffer y9 = y(i12);
                        y9.limit(i12);
                        remove.get(y9.array(), 0, i12);
                        byteBufferList.b(y9);
                        this.f44242a.addFirst(remove);
                        break;
                    }
                    byteBufferList.b(remove);
                    i10 = i11;
                }
            }
            this.f44244c -= i4;
            return;
        }
        throw new IllegalArgumentException(g4.b.f83241e);
    }

    public void l(byte[] bArr) {
        m(bArr, 0, bArr.length);
    }

    public void m(byte[] bArr, int i4, int i10) {
        if (P() >= i10) {
            int i11 = i10;
            while (i11 > 0) {
                ByteBuffer peek = this.f44242a.peek();
                int min = Math.min(peek.remaining(), i11);
                if (bArr != null) {
                    peek.get(bArr, i4, min);
                } else {
                    peek.position(peek.position() + min);
                }
                i11 -= min;
                i4 += min;
                if (peek.remaining() == 0) {
                    this.f44242a.remove();
                    M(peek);
                }
            }
            this.f44244c -= i10;
            return;
        }
        throw new IllegalArgumentException(g4.b.f83241e);
    }

    public ByteBuffer n() {
        if (P() == 0) {
            return f44241j;
        }
        J(P());
        return Q();
    }

    public ByteBuffer[] o() {
        ByteBuffer[] byteBufferArr = (ByteBuffer[]) this.f44242a.toArray(new ByteBuffer[this.f44242a.size()]);
        this.f44242a.clear();
        this.f44244c = 0;
        return byteBufferArr;
    }

    public byte[] p() {
        byte[] bArr = new byte[P()];
        l(bArr);
        return bArr;
    }

    public char q() {
        char c10 = (char) J(1).get();
        this.f44244c--;
        return c10;
    }

    public byte[] r(int i4) {
        byte[] bArr = new byte[i4];
        l(bArr);
        return bArr;
    }

    public int s() {
        int i4 = J(4).getInt();
        this.f44244c -= 4;
        return i4;
    }

    public long t() {
        long j4 = J(8).getLong();
        this.f44244c -= 8;
        return j4;
    }

    public short v() {
        short s9 = J(2).getShort();
        this.f44244c -= 2;
        return s9;
    }

    public boolean w() {
        return P() > 0;
    }

    public boolean x() {
        return this.f44244c == 0;
    }

    public ByteBufferList(ByteBuffer... byteBufferArr) {
        d(byteBufferArr);
    }

    public ByteBufferList(byte[] bArr) {
        b(ByteBuffer.wrap(bArr));
    }
}
