package com.fasterxml.jackson.databind.ext;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.io.IOException;
import java.io.StringWriter;
import java.lang.reflect.Type;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Node;

/* loaded from: classes.dex */
public class DOMSerializer extends StdSerializer<Node> {

    /* renamed from: d  reason: collision with root package name */
    protected final TransformerFactory f15105d;

    public DOMSerializer() {
        super(Node.class);
        try {
            TransformerFactory newInstance = TransformerFactory.newInstance();
            this.f15105d = newInstance;
            newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
        } catch (Exception e4) {
            throw new IllegalStateException("Could not instantiate `TransformerFactory`: " + e4.getMessage(), e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        if (fVar != null) {
            fVar.j(javaType);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public e getSchema(l lVar, Type type) {
        return d(TypedValues.Custom.S_STRING, true);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Node node, JsonGenerator jsonGenerator, l lVar) throws IOException {
        try {
            Transformer newTransformer = this.f15105d.newTransformer();
            newTransformer.setOutputProperty("omit-xml-declaration", "yes");
            newTransformer.setOutputProperty("indent", "no");
            StreamResult streamResult = new StreamResult(new StringWriter());
            newTransformer.transform(new DOMSource(node), streamResult);
            jsonGenerator.P1(streamResult.getWriter().toString());
        } catch (TransformerConfigurationException e4) {
            throw new IllegalStateException("Could not create XML Transformer for writing DOM `Node` value: " + e4.getMessage(), e4);
        } catch (TransformerException e10) {
            lVar.reportMappingProblem(e10, "DOM `Node` value serialization failed: %s", e10.getMessage());
        }
    }
}
