package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.FromStringDeserializer;
import java.io.StringReader;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;

/* loaded from: classes.dex */
public abstract class DOMDeserializer<T> extends FromStringDeserializer<T> {

    /* renamed from: g  reason: collision with root package name */
    private static final long f15101g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final DocumentBuilderFactory f15102h;

    /* loaded from: classes.dex */
    public static class DocumentDeserializer extends DOMDeserializer<Document> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f15103i = 1;

        public DocumentDeserializer() {
            super(Document.class);
        }

        @Override // com.fasterxml.jackson.databind.ext.DOMDeserializer, com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        public Document _deserialize(String str, DeserializationContext deserializationContext) throws IllegalArgumentException {
            return J0(str);
        }
    }

    /* loaded from: classes.dex */
    public static class NodeDeserializer extends DOMDeserializer<Node> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f15104i = 1;

        public NodeDeserializer() {
            super(Node.class);
        }

        @Override // com.fasterxml.jackson.databind.ext.DOMDeserializer, com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        public Node _deserialize(String str, DeserializationContext deserializationContext) throws IllegalArgumentException {
            return J0(str);
        }
    }

    static {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setNamespaceAware(true);
        newInstance.setExpandEntityReferences(false);
        try {
            newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
        } catch (Error | ParserConfigurationException unused) {
        }
        try {
            newInstance.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
        } catch (Throwable unused2) {
        }
        try {
            newInstance.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
        } catch (Throwable unused3) {
        }
        f15102h = newInstance;
    }

    protected DOMDeserializer(Class<T> cls) {
        super(cls);
    }

    protected DocumentBuilder I0() throws ParserConfigurationException {
        return f15102h.newDocumentBuilder();
    }

    protected final Document J0(String str) throws IllegalArgumentException {
        try {
            return I0().parse(new InputSource(new StringReader(str)));
        } catch (Exception e4) {
            throw new IllegalArgumentException("Failed to parse JSON String as XML: " + e4.getMessage(), e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
    public abstract T _deserialize(String str, DeserializationContext deserializationContext);
}
