package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.s0;
import io.sentry.instrumentation.file.h;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.namespace.NamespaceContext;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/* compiled from: SMPTETTTrackImpl.java */
/* loaded from: classes2.dex */
public class s extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: k  reason: collision with root package name */
    public static final String f36411k = "http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt";

    /* renamed from: d  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f36412d;

    /* renamed from: e  reason: collision with root package name */
    s0 f36413e;

    /* renamed from: f  reason: collision with root package name */
    com.mp4parser.iso14496.part30.e f36414f;

    /* renamed from: g  reason: collision with root package name */
    List<com.googlecode.mp4parser.authoring.f> f36415g;

    /* renamed from: h  reason: collision with root package name */
    a1 f36416h;

    /* renamed from: i  reason: collision with root package name */
    boolean f36417i;

    /* renamed from: j  reason: collision with root package name */
    private long[] f36418j;

    /* compiled from: SMPTETTTrackImpl.java */
    /* loaded from: classes2.dex */
    class a implements com.googlecode.mp4parser.authoring.f {

        /* renamed from: b  reason: collision with root package name */
        private final /* synthetic */ String f36420b;

        /* renamed from: c  reason: collision with root package name */
        private final /* synthetic */ List f36421c;

        a(String str, List list) {
            this.f36420b = str;
            this.f36421c = list;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                b(Channels.newChannel(byteArrayOutputStream));
                return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            writableByteChannel.write(ByteBuffer.wrap(com.coremedia.iso.l.b(this.f36420b)));
            for (File file : this.f36421c) {
                FileInputStream a10 = h.b.a(new FileInputStream(file), file);
                byte[] bArr = new byte[8096];
                while (true) {
                    int read = a10.read(bArr);
                    if (-1 == read) {
                        break;
                    }
                    writableByteChannel.write(ByteBuffer.wrap(bArr, 0, read));
                }
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            long length = com.coremedia.iso.l.b(this.f36420b).length;
            for (File file : this.f36421c) {
                length += file.length();
            }
            return length;
        }
    }

    /* compiled from: SMPTETTTrackImpl.java */
    /* loaded from: classes2.dex */
    class b implements com.googlecode.mp4parser.authoring.f {

        /* renamed from: b  reason: collision with root package name */
        private final /* synthetic */ File f36423b;

        b(File file) {
            this.f36423b = file;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            try {
                s sVar = s.this;
                File file = this.f36423b;
                return ByteBuffer.wrap(sVar.i(h.b.a(new FileInputStream(file), file)));
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            OutputStream newOutputStream = Channels.newOutputStream(writableByteChannel);
            s sVar = s.this;
            File file = this.f36423b;
            newOutputStream.write(sVar.i(h.b.a(new FileInputStream(file), file)));
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f36423b.length();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SMPTETTTrackImpl.java */
    /* loaded from: classes2.dex */
    public static class c implements NamespaceContext {
        private c() {
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getNamespaceURI(String str) {
            if (str.equals("ttml")) {
                return "http://www.w3.org/ns/ttml";
            }
            if (str.equals("smpte")) {
                return s.f36411k;
            }
            return null;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getPrefix(String str) {
            if (str.equals("http://www.w3.org/ns/ttml")) {
                return "ttml";
            }
            if (str.equals(s.f36411k)) {
                return "smpte";
            }
            return null;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public Iterator getPrefixes(String str) {
            return Arrays.asList("ttml", "smpte").iterator();
        }

        /* synthetic */ c(c cVar) {
            this();
        }
    }

    public s(File... fileArr) throws IOException, ParserConfigurationException, SAXException, XPathExpressionException {
        super(fileArr[0].getName());
        this.f36412d = new com.googlecode.mp4parser.authoring.i();
        this.f36413e = new s0();
        this.f36414f = new com.mp4parser.iso14496.part30.e();
        this.f36415g = new ArrayList();
        this.f36416h = new a1();
        this.f36418j = new long[fileArr.length];
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setNamespaceAware(true);
        DocumentBuilder newDocumentBuilder = newInstance.newDocumentBuilder();
        c cVar = null;
        long j4 = 0;
        String str = null;
        int i4 = 0;
        while (i4 < fileArr.length) {
            File file = fileArr[i4];
            a1.a aVar = new a1.a();
            this.f36416h.v().add(aVar);
            aVar.d(1L);
            Document parse = newDocumentBuilder.parse(file);
            String d4 = d(parse);
            if (str == null) {
                str = d4;
            } else if (!str.equals(d4)) {
                throw new RuntimeException("Within one Track all sample documents need to have the same language");
            }
            XPathFactory newInstance2 = XPathFactory.newInstance();
            c cVar2 = new c(cVar);
            XPath newXPath = newInstance2.newXPath();
            newXPath.setNamespaceContext(cVar2);
            long h4 = h(parse);
            this.f36418j[i4] = h4 - j4;
            NodeList nodeList = (NodeList) newXPath.compile("/ttml:tt/ttml:body/ttml:div/@smpte:backgroundImage").evaluate(parse, XPathConstants.NODESET);
            HashMap hashMap = new HashMap();
            HashSet hashSet = new HashSet();
            for (int i10 = 0; i10 < nodeList.getLength(); i10++) {
                hashSet.add(nodeList.item(i10).getNodeValue());
            }
            ArrayList<String> arrayList = new ArrayList(hashSet);
            Collections.sort(arrayList);
            int i11 = 1;
            for (String str2 : arrayList) {
                hashMap.put(str2, "urn:dece:container:subtitleimageindex:" + i11 + str2.substring(str2.lastIndexOf(".")));
                i11++;
            }
            if (!arrayList.isEmpty()) {
                String str3 = new String(i(h.b.a(new FileInputStream(file), file)));
                for (Map.Entry entry : hashMap.entrySet()) {
                    str3 = str3.replace((CharSequence) entry.getKey(), (CharSequence) entry.getValue());
                }
                ArrayList arrayList2 = new ArrayList();
                this.f36415g.add(new a(str3, arrayList2));
                a1.a.C0074a c0074a = new a1.a.C0074a();
                c0074a.h(com.coremedia.iso.l.c(str3));
                aVar.c().add(c0074a);
                for (String str4 : arrayList) {
                    File file2 = new File(file.getParentFile(), str4);
                    arrayList2.add(file2);
                    a1.a.C0074a c0074a2 = new a1.a.C0074a();
                    c0074a2.h(file2.length());
                    aVar.c().add(c0074a2);
                }
            } else {
                this.f36415g.add(new b(file));
            }
            i4++;
            j4 = h4;
            cVar = null;
        }
        this.f36412d.o(com.googlecode.mp4parser.util.g.a(str));
        this.f36414f.W(f36411k);
        this.f36414f.X(f36411k);
        if (this.f36417i) {
            this.f36414f.M("image/png");
        } else {
            this.f36414f.M("");
        }
        this.f36413e.D(this.f36414f);
        this.f36412d.s(30000L);
        this.f36412d.p(65535);
    }

    public static long b(Document document) {
        XPathFactory newInstance = XPathFactory.newInstance();
        c cVar = new c(null);
        XPath newXPath = newInstance.newXPath();
        newXPath.setNamespaceContext(cVar);
        try {
            NodeList nodeList = (NodeList) newXPath.compile("//*[@begin]").evaluate(document, XPathConstants.NODESET);
            long j4 = 0;
            for (int i4 = 0; i4 < nodeList.getLength(); i4++) {
                j4 = Math.min(k(nodeList.item(i4).getAttributes().getNamedItem("begin").getNodeValue()), j4);
            }
            return j4;
        } catch (XPathExpressionException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String d(Document document) {
        return document.getDocumentElement().getAttribute("xml:lang");
    }

    public static long h(Document document) {
        long k10;
        XPathFactory newInstance = XPathFactory.newInstance();
        c cVar = new c(null);
        XPath newXPath = newInstance.newXPath();
        newXPath.setNamespaceContext(cVar);
        try {
            NodeList nodeList = (NodeList) newXPath.compile("//*[@begin]").evaluate(document, XPathConstants.NODESET);
            long j4 = 0;
            for (int i4 = 0; i4 < nodeList.getLength(); i4++) {
                Node item = nodeList.item(i4);
                String nodeValue = item.getAttributes().getNamedItem("begin").getNodeValue();
                if (item.getAttributes().getNamedItem("dur") != null) {
                    k10 = k(nodeValue) + k(item.getAttributes().getNamedItem("dur").getNodeValue());
                } else if (item.getAttributes().getNamedItem(com.google.android.exoplayer2.text.ttml.d.f25727p0) != null) {
                    k10 = k(item.getAttributes().getNamedItem(com.google.android.exoplayer2.text.ttml.d.f25727p0).getNodeValue());
                } else {
                    throw new RuntimeException("neither end nor dur attribute is present");
                }
                j4 = Math.max(k10, j4);
            }
            return j4;
        } catch (XPathExpressionException e4) {
            throw new RuntimeException(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] i(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[8096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    static long k(String str) {
        Matcher matcher = Pattern.compile("([0-9][0-9]):([0-9][0-9]):([0-9][0-9])([\\.:][0-9][0-9]?[0-9]?)?").matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            String group3 = matcher.group(3);
            String group4 = matcher.group(4);
            if (group4 == null) {
                group4 = ".000";
            }
            String replace = group4.replace(":", ".");
            return (long) ((Long.parseLong(group) * 60 * 60 * 1000) + (Long.parseLong(group2) * 60 * 1000) + (Long.parseLong(group3) * 1000) + (Double.parseDouble("0" + replace) * 1000.0d));
        }
        throw new RuntimeException("Cannot match " + str + " to time expression");
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return this.f36416h;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36415g;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36412d;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        int length = this.f36418j.length;
        long[] jArr = new long[length];
        for (int i4 = 0; i4 < length; i4++) {
            jArr[i4] = (this.f36418j[i4] * this.f36412d.h()) / 1000;
        }
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "subt";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36413e;
    }
}
