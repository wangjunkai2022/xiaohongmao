package com.koushikdutta.async;

import android.util.Log;
import com.koushikdutta.async.callback.DataCallback;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.LinkedList;

/* loaded from: classes3.dex */
public class PushParser implements DataCallback {

    /* renamed from: n  reason: collision with root package name */
    static Hashtable<Class, Method> f44270n = new Hashtable<>();

    /* renamed from: i  reason: collision with root package name */
    DataEmitter f44279i;

    /* renamed from: a  reason: collision with root package name */
    private Waiter f44271a = new Waiter(0) { // from class: com.koushikdutta.async.PushParser.1
        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            PushParser.this.f44281k.add(null);
            return null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private Waiter f44272b = new Waiter(1) { // from class: com.koushikdutta.async.PushParser.2
        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            PushParser.this.f44281k.add(Byte.valueOf(byteBufferList.h()));
            return null;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private Waiter f44273c = new Waiter(2) { // from class: com.koushikdutta.async.PushParser.3
        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            PushParser.this.f44281k.add(Short.valueOf(byteBufferList.v()));
            return null;
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private Waiter f44274d = new Waiter(4) { // from class: com.koushikdutta.async.PushParser.4
        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            PushParser.this.f44281k.add(Integer.valueOf(byteBufferList.s()));
            return null;
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private Waiter f44275e = new Waiter(8) { // from class: com.koushikdutta.async.PushParser.5
        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            PushParser.this.f44281k.add(Long.valueOf(byteBufferList.t()));
            return null;
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private ParseCallback<byte[]> f44276f = new ParseCallback<byte[]>() { // from class: com.koushikdutta.async.PushParser.6
        @Override // com.koushikdutta.async.PushParser.ParseCallback
        /* renamed from: b */
        public void a(byte[] bArr) {
            PushParser.this.f44281k.add(bArr);
        }
    };

    /* renamed from: g  reason: collision with root package name */
    private ParseCallback<ByteBufferList> f44277g = new ParseCallback<ByteBufferList>() { // from class: com.koushikdutta.async.PushParser.7
        @Override // com.koushikdutta.async.PushParser.ParseCallback
        /* renamed from: b */
        public void a(ByteBufferList byteBufferList) {
            PushParser.this.f44281k.add(byteBufferList);
        }
    };

    /* renamed from: h  reason: collision with root package name */
    private ParseCallback<byte[]> f44278h = new ParseCallback<byte[]>() { // from class: com.koushikdutta.async.PushParser.8
        @Override // com.koushikdutta.async.PushParser.ParseCallback
        /* renamed from: b */
        public void a(byte[] bArr) {
            PushParser.this.f44281k.add(new String(bArr));
        }
    };

    /* renamed from: j  reason: collision with root package name */
    private LinkedList<Waiter> f44280j = new LinkedList<>();

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<Object> f44281k = new ArrayList<>();

    /* renamed from: l  reason: collision with root package name */
    ByteOrder f44282l = ByteOrder.BIG_ENDIAN;

    /* renamed from: m  reason: collision with root package name */
    ByteBufferList f44283m = new ByteBufferList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class ByteArrayWaiter extends Waiter {

        /* renamed from: b  reason: collision with root package name */
        ParseCallback<byte[]> f44292b;

        public ByteArrayWaiter(int i4, ParseCallback<byte[]> parseCallback) {
            super(i4);
            if (i4 > 0) {
                this.f44292b = parseCallback;
                return;
            }
            throw new IllegalArgumentException("length should be > 0");
        }

        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            byte[] bArr = new byte[this.f44301a];
            byteBufferList.l(bArr);
            this.f44292b.a(bArr);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class ByteBufferListWaiter extends Waiter {

        /* renamed from: b  reason: collision with root package name */
        ParseCallback<ByteBufferList> f44293b;

        public ByteBufferListWaiter(int i4, ParseCallback<ByteBufferList> parseCallback) {
            super(i4);
            if (i4 > 0) {
                this.f44293b = parseCallback;
                return;
            }
            throw new IllegalArgumentException("length should be > 0");
        }

        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            this.f44293b.a(byteBufferList.i(this.f44301a));
            return null;
        }
    }

    /* loaded from: classes3.dex */
    static class IntWaiter extends Waiter {

        /* renamed from: b  reason: collision with root package name */
        ParseCallback<Integer> f44294b;

        public IntWaiter(ParseCallback<Integer> parseCallback) {
            super(4);
            this.f44294b = parseCallback;
        }

        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            this.f44294b.a(Integer.valueOf(byteBufferList.s()));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class LenByteArrayWaiter extends Waiter {

        /* renamed from: b  reason: collision with root package name */
        private final ParseCallback<byte[]> f44295b;

        public LenByteArrayWaiter(ParseCallback<byte[]> parseCallback) {
            super(4);
            this.f44295b = parseCallback;
        }

        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            int s9 = byteBufferList.s();
            if (s9 == 0) {
                this.f44295b.a(new byte[0]);
                return null;
            }
            return new ByteArrayWaiter(s9, this.f44295b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class LenByteBufferListWaiter extends Waiter {

        /* renamed from: b  reason: collision with root package name */
        private final ParseCallback<ByteBufferList> f44296b;

        public LenByteBufferListWaiter(ParseCallback<ByteBufferList> parseCallback) {
            super(4);
            this.f44296b = parseCallback;
        }

        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            return new ByteBufferListWaiter(byteBufferList.s(), this.f44296b);
        }
    }

    /* loaded from: classes3.dex */
    public interface ParseCallback<T> {
        void a(T t9);
    }

    /* loaded from: classes3.dex */
    private class TapWaiter extends Waiter {

        /* renamed from: b  reason: collision with root package name */
        private final TapCallback f44297b;

        public TapWaiter(TapCallback tapCallback) {
            super(0);
            this.f44297b = tapCallback;
        }

        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            Method b10 = PushParser.b(this.f44297b);
            b10.setAccessible(true);
            try {
                b10.invoke(this.f44297b, PushParser.this.f44281k.toArray());
            } catch (Exception e4) {
                Log.e("PushParser", "Error while invoking tap callback", e4);
            }
            PushParser.this.f44281k.clear();
            return null;
        }
    }

    /* loaded from: classes3.dex */
    static class UntilWaiter extends Waiter {

        /* renamed from: b  reason: collision with root package name */
        byte f44299b;

        /* renamed from: c  reason: collision with root package name */
        DataCallback f44300c;

        public UntilWaiter(byte b10, DataCallback dataCallback) {
            super(1);
            this.f44299b = b10;
            this.f44300c = dataCallback;
        }

        @Override // com.koushikdutta.async.PushParser.Waiter
        public Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            ByteBufferList byteBufferList2 = new ByteBufferList();
            boolean z9 = true;
            while (true) {
                if (byteBufferList.T() <= 0) {
                    break;
                }
                ByteBuffer Q = byteBufferList.Q();
                Q.mark();
                int i4 = 0;
                while (Q.remaining() > 0) {
                    z9 = Q.get() == this.f44299b;
                    if (z9) {
                        break;
                    }
                    i4++;
                }
                Q.reset();
                if (z9) {
                    byteBufferList.e(Q);
                    byteBufferList.k(byteBufferList2, i4);
                    byteBufferList.h();
                    break;
                }
                byteBufferList2.b(Q);
            }
            this.f44300c.s(dataEmitter, byteBufferList2);
            if (z9) {
                return null;
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static abstract class Waiter {

        /* renamed from: a  reason: collision with root package name */
        int f44301a;

        public Waiter(int i4) {
            this.f44301a = i4;
        }

        public abstract Waiter a(DataEmitter dataEmitter, ByteBufferList byteBufferList);
    }

    public PushParser(DataEmitter dataEmitter) {
        this.f44279i = dataEmitter;
        dataEmitter.b0(this);
    }

    static Method b(TapCallback tapCallback) {
        Method[] methods;
        Method method = f44270n.get(tapCallback.getClass());
        if (method != null) {
            return method;
        }
        for (Method method2 : tapCallback.getClass().getMethods()) {
            if ("tap".equals(method2.getName())) {
                f44270n.put(tapCallback.getClass(), method2);
                return method2;
            }
        }
        Method[] declaredMethods = tapCallback.getClass().getDeclaredMethods();
        if (declaredMethods.length == 1) {
            return declaredMethods[0];
        }
        throw new AssertionError("-keep class * extends com.koushikdutta.async.TapCallback {\n    *;\n}\n");
    }

    public PushParser c() {
        this.f44280j.add(this.f44271a);
        return this;
    }

    public PushParser d() {
        this.f44280j.add(this.f44272b);
        return this;
    }

    public PushParser e(int i4) {
        return i4 == -1 ? k() : f(i4, this.f44276f);
    }

    public PushParser f(int i4, ParseCallback<byte[]> parseCallback) {
        this.f44280j.add(new ByteArrayWaiter(i4, parseCallback));
        return this;
    }

    public PushParser g(int i4) {
        return i4 == -1 ? l() : h(i4, this.f44277g);
    }

    public PushParser h(int i4, ParseCallback<ByteBufferList> parseCallback) {
        this.f44280j.add(new ByteBufferListWaiter(i4, parseCallback));
        return this;
    }

    public PushParser i() {
        this.f44280j.add(this.f44274d);
        return this;
    }

    public PushParser j(ParseCallback<Integer> parseCallback) {
        this.f44280j.add(new IntWaiter(parseCallback));
        return this;
    }

    public PushParser k() {
        this.f44280j.add(new LenByteArrayWaiter(this.f44276f));
        return this;
    }

    public PushParser l() {
        return m(this.f44277g);
    }

    public PushParser m(ParseCallback<ByteBufferList> parseCallback) {
        this.f44280j.add(new LenByteBufferListWaiter(parseCallback));
        return this;
    }

    public PushParser n() {
        this.f44280j.add(this.f44275e);
        return this;
    }

    public PushParser o() {
        this.f44280j.add(this.f44273c);
        return this;
    }

    public PushParser p() {
        this.f44280j.add(new LenByteArrayWaiter(this.f44278h));
        return this;
    }

    public PushParser q(ByteOrder byteOrder) {
        this.f44282l = byteOrder;
        return this;
    }

    public void r(TapCallback tapCallback) {
        this.f44280j.add(new TapWaiter(tapCallback));
    }

    @Override // com.koushikdutta.async.callback.DataCallback
    public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        byteBufferList.j(this.f44283m);
        while (this.f44280j.size() > 0 && this.f44283m.P() >= this.f44280j.peek().f44301a) {
            this.f44283m.A(this.f44282l);
            Waiter a10 = this.f44280j.poll().a(dataEmitter, this.f44283m);
            if (a10 != null) {
                this.f44280j.addFirst(a10);
            }
        }
        if (this.f44280j.size() == 0) {
            this.f44283m.j(byteBufferList);
        }
    }

    public PushParser t(byte b10, DataCallback dataCallback) {
        this.f44280j.add(new UntilWaiter(b10, dataCallback));
        return this;
    }
}
