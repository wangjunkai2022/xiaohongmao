package com.koushikdutta.async.parser;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.http.body.DocumentBody;
import com.koushikdutta.async.stream.ByteBufferListInputStream;
import java.lang.reflect.Type;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;

/* loaded from: classes3.dex */
public class DocumentParser implements AsyncParser<Document> {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Document e(ByteBufferList byteBufferList) throws Exception {
        return DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteBufferListInputStream(byteBufferList));
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public Future<Document> a(DataEmitter dataEmitter) {
        return new ByteBufferListParser().a(dataEmitter).F(a.f45094a);
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public String b() {
        return "text/xml";
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    /* renamed from: f */
    public void c(DataSink dataSink, Document document, CompletedCallback completedCallback) {
        new DocumentBody(document).q(null, dataSink, completedCallback);
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public Type getType() {
        return Document.class;
    }
}
