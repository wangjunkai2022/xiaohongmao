package com.googlecode.mp4parser.boxes.apple;

import androidx.room.RoomMasterTable;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Locale;
import org.aspectj.lang.c;

/* compiled from: AppleDataBox.java */
/* loaded from: classes2.dex */
public abstract class j extends com.googlecode.mp4parser.a {

    /* renamed from: q  reason: collision with root package name */
    private static HashMap<String, String> f36457q;

    /* renamed from: r  reason: collision with root package name */
    private static final /* synthetic */ c.b f36458r = null;

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f36459s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final /* synthetic */ c.b f36460t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36461u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36462v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36463w = null;

    /* renamed from: n  reason: collision with root package name */
    int f36464n;

    /* renamed from: o  reason: collision with root package name */
    int f36465o;

    /* renamed from: p  reason: collision with root package name */
    int f36466p;

    static {
        s();
        HashMap<String, String> hashMap = new HashMap<>();
        f36457q = hashMap;
        hashMap.put("0", "English");
        f36457q.put("1", "French");
        f36457q.put("2", "German");
        f36457q.put("3", "Italian");
        f36457q.put(g5.h.f67840d, "Dutch");
        f36457q.put(g5.h.f67841e, "Swedish");
        f36457q.put("6", "Spanish");
        f36457q.put(g5.h.f67842f, "Danish");
        f36457q.put(g5.h.f67843g, "Portuguese");
        f36457q.put(g5.h.f67844h, "Norwegian");
        f36457q.put("10", "Hebrew");
        f36457q.put("11", "Japanese");
        f36457q.put("12", "Arabic");
        f36457q.put("13", "Finnish");
        f36457q.put("14", "Greek");
        f36457q.put("15", "Icelandic");
        f36457q.put("16", "Maltese");
        f36457q.put("17", "Turkish");
        f36457q.put("18", "Croatian");
        f36457q.put("19", "Traditional_Chinese");
        f36457q.put("20", "Urdu");
        f36457q.put("21", "Hindi");
        f36457q.put("22", "Thai");
        f36457q.put("23", "Korean");
        f36457q.put("24", "Lithuanian");
        f36457q.put("25", "Polish");
        f36457q.put("26", "Hungarian");
        f36457q.put("27", "Estonian");
        f36457q.put("28", "Lettish");
        f36457q.put("29", "Sami");
        f36457q.put("30", "Faroese");
        f36457q.put("31", "Farsi");
        f36457q.put("32", "Russian");
        f36457q.put("33", "Simplified_Chinese");
        f36457q.put("34", "Flemish");
        f36457q.put("35", "Irish");
        f36457q.put("36", "Albanian");
        f36457q.put("37", "Romanian");
        f36457q.put("38", "Czech");
        f36457q.put("39", "Slovak");
        f36457q.put("40", "Slovenian");
        f36457q.put("41", "Yiddish");
        f36457q.put(RoomMasterTable.DEFAULT_ID, "Serbian");
        f36457q.put("43", "Macedonian");
        f36457q.put("44", "Bulgarian");
        f36457q.put("45", "Ukrainian");
        f36457q.put("46", "Belarusian");
        f36457q.put("47", "Uzbek");
        f36457q.put("48", "Kazakh");
        f36457q.put("49", "Azerbaijani");
        f36457q.put("50", "AzerbaijanAr");
        f36457q.put("51", "Armenian");
        f36457q.put("52", "Georgian");
        f36457q.put("53", "Moldavian");
        f36457q.put("54", "Kirghiz");
        f36457q.put("55", "Tajiki");
        f36457q.put("56", "Turkmen");
        f36457q.put("57", "Mongolian");
        f36457q.put("58", "MongolianCyr");
        f36457q.put("59", "Pashto");
        f36457q.put("60", "Kurdish");
        f36457q.put("61", "Kashmiri");
        f36457q.put("62", "Sindhi");
        f36457q.put("63", "Tibetan");
        f36457q.put("64", "Nepali");
        f36457q.put("65", "Sanskrit");
        f36457q.put("66", "Marathi");
        f36457q.put("67", "Bengali");
        f36457q.put("68", "Assamese");
        f36457q.put("69", "Gujarati");
        f36457q.put("70", "Punjabi");
        f36457q.put("71", "Oriya");
        f36457q.put("72", "Malayalam");
        f36457q.put("73", "Kannada");
        f36457q.put("74", "Tamil");
        f36457q.put("75", "Telugu");
        f36457q.put("76", "Sinhala");
        f36457q.put("77", "Burmese");
        f36457q.put("78", "Khmer");
        f36457q.put("79", "Lao");
        f36457q.put("80", "Vietnamese");
        f36457q.put("81", "Indonesian");
        f36457q.put("82", "Tagalog");
        f36457q.put("83", "MalayRoman");
        f36457q.put("84", "MalayArabic");
        f36457q.put("85", "Amharic");
        f36457q.put("87", "Galla");
        f36457q.put("87", "Oromo");
        f36457q.put("88", "Somali");
        f36457q.put("89", "Swahili");
        f36457q.put("90", "Kinyarwanda");
        f36457q.put("91", "Rundi");
        f36457q.put("92", "Nyanja");
        f36457q.put("93", "Malagasy");
        f36457q.put("94", "Esperanto");
        f36457q.put("128", "Welsh");
        f36457q.put("129", "Basque");
        f36457q.put("130", "Catalan");
        f36457q.put("131", "Latin");
        f36457q.put("132", "Quechua");
        f36457q.put("133", "Guarani");
        f36457q.put("134", "Aymara");
        f36457q.put("135", "Tatar");
        f36457q.put("136", "Uighur");
        f36457q.put("137", "Dzongkha");
        f36457q.put("138", "JavaneseRom");
        f36457q.put("32767", "Unspecified");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j(String str, int i4) {
        super(str);
        this.f36464n = i4;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleDataBox.java", j.class);
        f36458r = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getLanguageString", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "java.lang.String"), 25);
        f36459s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDataType", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 43);
        f36460t = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDataCountry", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 47);
        f36461u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDataCountry", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "int", "dataCountry", "", "void"), 51);
        f36462v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDataLanguage", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 55);
        f36463w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDataLanguage", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "int", "dataLanguage", "", "void"), 59);
    }

    public void A(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36461u, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36465o = i4;
    }

    public void B(int i4) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f36463w, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36466p = i4;
    }

    protected abstract byte[] C();

    @s3.a
    protected void D(ByteBuffer byteBuffer) {
        byteBuffer.putInt(v() + 16);
        byteBuffer.put("data".getBytes());
        byteBuffer.putInt(this.f36464n);
        com.coremedia.iso.i.f(byteBuffer, this.f36465o);
        com.coremedia.iso.i.f(byteBuffer, this.f36466p);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        y(z(byteBuffer));
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        D(byteBuffer);
        byteBuffer.put(C());
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return v() + 16;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36460t, this, this));
        return this.f36465o;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36462v, this, this));
        return this.f36466p;
    }

    protected abstract int v();

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36459s, this, this));
        return this.f36464n;
    }

    public String x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36458r, this, this));
        HashMap<String, String> hashMap = f36457q;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f36466p);
        String str = hashMap.get(sb.toString());
        if (str == null) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[2]);
            com.coremedia.iso.i.f(wrap, this.f36466p);
            wrap.reset();
            return new Locale(com.coremedia.iso.g.f(wrap)).getDisplayLanguage();
        }
        return str;
    }

    protected abstract void y(ByteBuffer byteBuffer);

    @s3.a
    protected ByteBuffer z(ByteBuffer byteBuffer) {
        int i4 = byteBuffer.getInt();
        byteBuffer.getInt();
        this.f36464n = byteBuffer.getInt();
        short s9 = byteBuffer.getShort();
        this.f36465o = s9;
        if (s9 < 0) {
            this.f36465o = s9 + 65536;
        }
        short s10 = byteBuffer.getShort();
        this.f36466p = s10;
        if (s10 < 0) {
            this.f36466p = s10 + 65536;
        }
        int i10 = i4 - 16;
        ByteBuffer byteBuffer2 = (ByteBuffer) byteBuffer.duplicate().slice().limit(i10);
        byteBuffer.position(i10 + byteBuffer.position());
        return byteBuffer2;
    }
}
