package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.parser.DocumentParser;
import com.koushikdutta.async.util.Charsets;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;

/* loaded from: classes3.dex */
public class DocumentBody implements AsyncHttpRequestBody<Document> {

    /* renamed from: c  reason: collision with root package name */
    public static final String f44706c = "application/xml";

    /* renamed from: a  reason: collision with root package name */
    ByteArrayOutputStream f44707a;

    /* renamed from: b  reason: collision with root package name */
    Document f44708b;

    public DocumentBody() {
        this(null);
    }

    private void b() {
        if (this.f44707a != null) {
            return;
        }
        try {
            DOMSource dOMSource = new DOMSource(this.f44708b);
            Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
            this.f44707a = new ByteArrayOutputStream();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.f44707a, Charsets.f45143b);
            newTransformer.transform(dOMSource, new StreamResult(outputStreamWriter));
            outputStreamWriter.flush();
        } catch (Exception unused) {
        }
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void K(DataEmitter dataEmitter, final CompletedCallback completedCallback) {
        new DocumentParser().a(dataEmitter).B(new FutureCallback<Document>() { // from class: com.koushikdutta.async.http.body.DocumentBody.1
            @Override // com.koushikdutta.async.future.FutureCallback
            /* renamed from: a */
            public void c(Exception exc, Document document) {
                DocumentBody.this.f44708b = document;
                completedCallback.g(exc);
            }
        });
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    /* renamed from: a */
    public Document get() {
        return this.f44708b;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public String getContentType() {
        return f44706c;
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public int length() {
        b();
        return this.f44707a.size();
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public void q(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        b();
        Util.n(dataSink, this.f44707a.toByteArray(), completedCallback);
    }

    @Override // com.koushikdutta.async.http.body.AsyncHttpRequestBody
    public boolean t0() {
        return true;
    }

    public DocumentBody(Document document) {
        this.f44708b = document;
    }
}
