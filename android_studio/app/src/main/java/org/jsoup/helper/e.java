package org.jsoup.helper;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Stack;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import javax.xml.xpath.XPathFactoryConfigurationException;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.g;
import org.jsoup.nodes.k;
import org.jsoup.nodes.n;
import org.jsoup.select.Selector;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import r7.h;

/* compiled from: W3CDom.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    public static final String f91783b = "jsoupSource";

    /* renamed from: c  reason: collision with root package name */
    public static final String f91784c = "javax.xml.xpath.XPathFactory:jsoup";

    /* renamed from: a  reason: collision with root package name */
    protected DocumentBuilderFactory f91785a;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: W3CDom.java */
    /* loaded from: classes5.dex */
    public static class a implements org.jsoup.select.e {

        /* renamed from: d  reason: collision with root package name */
        private static final String f91786d = "xmlns";

        /* renamed from: e  reason: collision with root package name */
        private static final String f91787e = "xmlns:";

        /* renamed from: a  reason: collision with root package name */
        private final Document f91788a;

        /* renamed from: b  reason: collision with root package name */
        private final Stack<HashMap<String, String>> f91789b;

        /* renamed from: c  reason: collision with root package name */
        private Node f91790c;

        public a(Document document) {
            Stack<HashMap<String, String>> stack = new Stack<>();
            this.f91789b = stack;
            this.f91788a = document;
            stack.push(new HashMap<>());
            this.f91790c = document;
        }

        private void c(Node node, k kVar) {
            node.setUserData(e.f91783b, kVar, null);
            this.f91790c.appendChild(node);
        }

        private void d(k kVar, Element element) {
            Iterator<org.jsoup.nodes.a> it = kVar.i().iterator();
            while (it.hasNext()) {
                org.jsoup.nodes.a next = it.next();
                String d4 = org.jsoup.nodes.a.d(next.getKey(), Document.OutputSettings.Syntax.xml);
                if (d4 != null) {
                    element.setAttribute(d4, next.getValue());
                }
            }
        }

        private String e(g gVar) {
            Iterator<org.jsoup.nodes.a> it = gVar.i().iterator();
            while (true) {
                String str = "";
                if (!it.hasNext()) {
                    break;
                }
                org.jsoup.nodes.a next = it.next();
                String key = next.getKey();
                if (!key.equals(f91786d)) {
                    if (key.startsWith(f91787e)) {
                        str = key.substring(6);
                    }
                }
                this.f91789b.peek().put(str, next.getValue());
            }
            int indexOf = gVar.j2().indexOf(58);
            return indexOf > 0 ? gVar.j2().substring(0, indexOf) : "";
        }

        @Override // org.jsoup.select.e
        public void a(k kVar, int i4) {
            if ((kVar instanceof g) && (this.f91790c.getParentNode() instanceof Element)) {
                this.f91790c = this.f91790c.getParentNode();
            }
            this.f91789b.pop();
        }

        @Override // org.jsoup.select.e
        public void b(k kVar, int i4) {
            Element createElementNS;
            this.f91789b.push(new HashMap<>(this.f91789b.peek()));
            if (kVar instanceof g) {
                g gVar = (g) kVar;
                String str = this.f91789b.peek().get(e(gVar));
                String j22 = gVar.j2();
                if (str == null) {
                    try {
                        if (j22.contains(":")) {
                            createElementNS = this.f91788a.createElementNS("", j22);
                            d(gVar, createElementNS);
                            c(createElementNS, gVar);
                            this.f91790c = createElementNS;
                        }
                    } catch (DOMException unused) {
                        org.w3c.dom.Document document = this.f91788a;
                        c(document.createTextNode("<" + j22 + ">"), gVar);
                        return;
                    }
                }
                createElementNS = this.f91788a.createElementNS(str, j22);
                d(gVar, createElementNS);
                c(createElementNS, gVar);
                this.f91790c = createElementNS;
            } else if (kVar instanceof n) {
                n nVar = (n) kVar;
                c(this.f91788a.createTextNode(nVar.o0()), nVar);
            } else if (kVar instanceof org.jsoup.nodes.d) {
                org.jsoup.nodes.d dVar = (org.jsoup.nodes.d) kVar;
                c(this.f91788a.createComment(dVar.o0()), dVar);
            } else if (kVar instanceof org.jsoup.nodes.e) {
                org.jsoup.nodes.e eVar = (org.jsoup.nodes.e) kVar;
                c(this.f91788a.createTextNode(eVar.o0()), eVar);
            }
        }
    }

    public e() {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        this.f91785a = newInstance;
        newInstance.setNamespaceAware(true);
    }

    public static HashMap<String, String> a() {
        return j("html");
    }

    public static HashMap<String, String> b() {
        return j("xml");
    }

    public static String d(org.w3c.dom.Document document, @h Map<String, String> map) {
        try {
            DOMSource dOMSource = new DOMSource(document);
            StringWriter stringWriter = new StringWriter();
            StreamResult streamResult = new StreamResult(stringWriter);
            Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
            if (map != null) {
                newTransformer.setOutputProperties(k(map));
            }
            if (document.getDoctype() != null) {
                DocumentType doctype = document.getDoctype();
                if (!org.jsoup.internal.f.g(doctype.getPublicId())) {
                    newTransformer.setOutputProperty("doctype-public", doctype.getPublicId());
                }
                if (!org.jsoup.internal.f.g(doctype.getSystemId())) {
                    newTransformer.setOutputProperty("doctype-system", doctype.getSystemId());
                } else if (doctype.getName().equalsIgnoreCase("html") && org.jsoup.internal.f.g(doctype.getPublicId()) && org.jsoup.internal.f.g(doctype.getSystemId())) {
                    newTransformer.setOutputProperty("doctype-system", "about:legacy-compat");
                }
            }
            newTransformer.transform(dOMSource, streamResult);
            return stringWriter.toString();
        } catch (TransformerException e4) {
            throw new IllegalStateException(e4);
        }
    }

    public static org.w3c.dom.Document e(org.jsoup.nodes.Document document) {
        return new e().h(document);
    }

    private static HashMap<String, String> j(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", str);
        return hashMap;
    }

    static Properties k(Map<String, String> map) {
        Properties properties = new Properties();
        properties.putAll(map);
        return properties;
    }

    public String c(org.w3c.dom.Document document) {
        return d(document, null);
    }

    public void f(org.jsoup.nodes.Document document, org.w3c.dom.Document document2) {
        g(document, document2);
    }

    public void g(g gVar, org.w3c.dom.Document document) {
        org.jsoup.nodes.Document N = gVar.N();
        if (N != null && !org.jsoup.internal.f.g(N.G2())) {
            document.setDocumentURI(N.G2());
        }
        if (gVar instanceof org.jsoup.nodes.Document) {
            gVar = gVar.A0(0);
        }
        org.jsoup.select.d.c(new a(document), gVar);
    }

    public org.w3c.dom.Document h(org.jsoup.nodes.Document document) {
        return i(document);
    }

    public org.w3c.dom.Document i(g gVar) {
        d.j(gVar);
        try {
            DocumentBuilder newDocumentBuilder = this.f91785a.newDocumentBuilder();
            DOMImplementation dOMImplementation = newDocumentBuilder.getDOMImplementation();
            org.w3c.dom.Document newDocument = newDocumentBuilder.newDocument();
            org.jsoup.nodes.Document N = gVar.N();
            org.jsoup.nodes.f C2 = N != null ? N.C2() : null;
            if (C2 != null) {
                newDocument.appendChild(dOMImplementation.createDocumentType(C2.n0(), C2.o0(), C2.q0()));
            }
            newDocument.setXmlStandalone(true);
            g(gVar, newDocument);
            return newDocument;
        } catch (ParserConfigurationException e4) {
            throw new IllegalStateException(e4);
        }
    }

    public NodeList l(String str, org.w3c.dom.Document document) {
        XPathFactory newInstance;
        d.h(str);
        d.j(document);
        try {
            if (System.getProperty(f91784c) != null) {
                newInstance = XPathFactory.newInstance("jsoup");
            } else {
                newInstance = XPathFactory.newInstance();
            }
            NodeList nodeList = (NodeList) newInstance.newXPath().compile(str).evaluate(document, XPathConstants.NODESET);
            d.j(nodeList);
            return nodeList;
        } catch (XPathExpressionException | XPathFactoryConfigurationException e4) {
            throw new Selector.SelectorParseException("Could not evaluate XPath query [%s]: %s", str, e4.getMessage());
        }
    }

    public <T extends k> List<T> m(NodeList nodeList, Class<T> cls) {
        d.j(nodeList);
        d.j(cls);
        ArrayList arrayList = new ArrayList(nodeList.getLength());
        for (int i4 = 0; i4 < nodeList.getLength(); i4++) {
            Object userData = nodeList.item(i4).getUserData(f91783b);
            if (cls.isInstance(userData)) {
                arrayList.add(cls.cast(userData));
            }
        }
        return arrayList;
    }
}
