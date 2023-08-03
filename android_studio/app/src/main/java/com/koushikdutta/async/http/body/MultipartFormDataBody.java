package com.koushikdutta.async.http.body;

import android.text.TextUtils;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.LineEmitter;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ContinuationCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.future.Continuation;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.server.BoundaryEmitter;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* loaded from: classes3.dex */
public class MultipartFormDataBody extends BoundaryEmitter implements AsyncHttpRequestBody<Multimap> {

    /* renamed from: s  reason: collision with root package name */
    public static final String f44726s = "multipart/";

    /* renamed from: t  reason: collision with root package name */
    public static final String f44727t = "multipart/form-data";

    /* renamed from: j  reason: collision with root package name */
    LineEmitter f44728j;

    /* renamed from: k  reason: collision with root package name */
    Headers f44729k;

    /* renamed from: l  reason: collision with root package name */
    ByteBufferList f44730l;

    /* renamed from: m  reason: collision with root package name */
    Part f44731m;

    /* renamed from: n  reason: collision with root package name */
    String f44732n = "multipart/form-data";

    /* renamed from: o  reason: collision with root package name */
    MultipartCallback f44733o;

    /* renamed from: p  reason: collision with root package name */
    int f44734p;

    /* renamed from: q  reason: collision with root package name */
    int f44735q;

    /* renamed from: r  reason: collision with root package name */
    private ArrayList<Part> f44736r;

    /* loaded from: classes3.dex */
    public interface MultipartCallback {
        void a(Part part);
    }

    public MultipartFormDataBody(String str) {
        String string = Multimap.parseSemicolonDelimited(str).getString("boundary");
        if (string == null) {
            v0(new Exception("No boundary found for multipart/form-data"));
        } else {
            B0(string);
        }
    }

    @Override // com.koushikdutta.async.http.server.BoundaryEmitter
    protected void A0() {
        final Headers headers = new Headers();
        LineEmitter lineEmitter = new LineEmitter();
        this.f44728j = lineEmitter;
        lineEmitter.b(new LineEmitter.StringCallback() { // from class: com.koushikdutta.async.http.body.MultipartFormDataBody.1
            @Override // com.koushikdutta.async.LineEmitter.StringCallback
            public void a(String str) {
                if (!"\r".equals(str)) {
                    headers.f(str);
                    return;
                }
                MultipartFormDataBody.this.J0();
                MultipartFormDataBody multipartFormDataBody = MultipartFormDataBody.this;
                multipartFormDataBody.f44728j = null;
                multipartFormDataBody.b0(null);
                Part part = new Part(headers);
                MultipartCallback multipartCallback = MultipartFormDataBody.this.f44733o;
                if (multipartCallback != null) {
                    multipartCallback.a(part);
                }
                if (MultipartFormDataBody.this.r0() == null) {
                    MultipartFormDataBody multipartFormDataBody2 = MultipartFormDataBody.this;
                    multipartFormDataBody2.f44731m = part;
                    multipartFormDataBody2.f44730l = new ByteBufferList();
                    MultipartFormDataBody.this.b0(new DataCallback() { // from class: com.koushikdutta.async.http.body.MultipartFormDataBody.1.1
                        @Override // com.koushikdutta.async.callback.DataCallback
                        public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                            byteBufferList.j(MultipartFormDataBody.this.f44730l);
                        }
                    });
                }
            }
        });
        b0(this.f44728j);
    }

    public void C0(String str, File file) {
        D0(new FilePart(str, file));
    }

    public void D0(Part part) {
        if (this.f44736r == null) {
            this.f44736r = new ArrayList<>();
        }
        this.f44736r.add(part);
    }

    public void E0(String str, String str2) {
        D0(new StringPart(str, str2));
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    /* renamed from: F0 */
    public Multimap get() {
        return new Multimap(this.f44729k.i());
    }

    public String G0(String str) {
        Headers headers = this.f44729k;
        if (headers == null) {
            return null;
        }
        return headers.g(str);
    }

    public MultipartCallback H0() {
        return this.f44733o;
    }

    public List<Part> I0() {
        if (this.f44736r == null) {
            return null;
        }
        return new ArrayList(this.f44736r);
    }

    void J0() {
        if (this.f44730l == null) {
            return;
        }
        if (this.f44729k == null) {
            this.f44729k = new Headers();
        }
        String H = this.f44730l.H();
        String c10 = TextUtils.isEmpty(this.f44731m.c()) ? "unnamed" : this.f44731m.c();
        StringPart stringPart = new StringPart(c10, H);
        stringPart.f44753a = this.f44731m.f44753a;
        D0(stringPart);
        this.f44729k.a(c10, H);
        this.f44731m = null;
        this.f44730l = null;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void K(DataEmitter dataEmitter, CompletedCallback completedCallback) {
        G(dataEmitter);
        X(completedCallback);
    }

    public void K0(MultipartCallback multipartCallback) {
        this.f44733o = multipartCallback;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public String getContentType() {
        if (w0() == null) {
            B0("----------------------------" + UUID.randomUUID().toString().replace("-", ""));
        }
        return this.f44732n + "; boundary=" + w0();
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public int length() {
        if (w0() == null) {
            B0("----------------------------" + UUID.randomUUID().toString().replace("-", ""));
        }
        int i4 = 0;
        Iterator<Part> it = this.f44736r.iterator();
        while (it.hasNext()) {
            Part next = it.next();
            String o9 = next.d().o(y0());
            if (next.f() == -1) {
                return -1;
            }
            i4 = (int) (i4 + next.f() + o9.getBytes().length + 2);
        }
        int length = i4 + x0().getBytes().length;
        this.f44735q = length;
        return length;
    }

    public void p(String str) {
        this.f44732n = str;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void q(AsyncHttpRequest asyncHttpRequest, final DataSink dataSink, final CompletedCallback completedCallback) {
        if (this.f44736r == null) {
            return;
        }
        Continuation continuation = new Continuation(new CompletedCallback() { // from class: com.koushikdutta.async.http.body.MultipartFormDataBody.2
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                completedCallback.g(exc);
            }
        });
        Iterator<Part> it = this.f44736r.iterator();
        while (it.hasNext()) {
            final Part next = it.next();
            continuation.q(new ContinuationCallback() { // from class: com.koushikdutta.async.http.body.MultipartFormDataBody.5
                @Override // com.koushikdutta.async.callback.ContinuationCallback
                public void a(Continuation continuation2, CompletedCallback completedCallback2) throws Exception {
                    byte[] bytes = next.d().o(MultipartFormDataBody.this.y0()).getBytes();
                    Util.n(dataSink, bytes, completedCallback2);
                    MultipartFormDataBody.this.f44734p += bytes.length;
                }
            }).q(new ContinuationCallback() { // from class: com.koushikdutta.async.http.body.MultipartFormDataBody.4
                @Override // com.koushikdutta.async.callback.ContinuationCallback
                public void a(Continuation continuation2, CompletedCallback completedCallback2) throws Exception {
                    long f10 = next.f();
                    if (f10 >= 0) {
                        MultipartFormDataBody multipartFormDataBody = MultipartFormDataBody.this;
                        multipartFormDataBody.f44734p = (int) (multipartFormDataBody.f44734p + f10);
                    }
                    next.h(dataSink, completedCallback2);
                }
            }).q(new ContinuationCallback() { // from class: com.koushikdutta.async.http.body.MultipartFormDataBody.3
                @Override // com.koushikdutta.async.callback.ContinuationCallback
                public void a(Continuation continuation2, CompletedCallback completedCallback2) throws Exception {
                    byte[] bytes = "\r\n".getBytes();
                    Util.n(dataSink, bytes, completedCallback2);
                    MultipartFormDataBody.this.f44734p += bytes.length;
                }
            });
        }
        continuation.q(new ContinuationCallback() { // from class: com.koushikdutta.async.http.body.MultipartFormDataBody.6
            @Override // com.koushikdutta.async.callback.ContinuationCallback
            public void a(Continuation continuation2, CompletedCallback completedCallback2) throws Exception {
                byte[] bytes = MultipartFormDataBody.this.x0().getBytes();
                Util.n(dataSink, bytes, completedCallback2);
                MultipartFormDataBody.this.f44734p += bytes.length;
            }
        });
        continuation.H();
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public boolean t0() {
        return false;
    }

    public String toString() {
        Iterator<Part> it = I0().iterator();
        return it.hasNext() ? it.next().toString() : "multipart content is empty";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.koushikdutta.async.http.server.BoundaryEmitter
    public void z0() {
        super.z0();
        J0();
    }

    public MultipartFormDataBody() {
    }
}
