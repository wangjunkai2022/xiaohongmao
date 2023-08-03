package org.minidns.hla;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum xmpp_client uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes5.dex */
public final class SrvType {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ SrvType[] f92832a;
    public static final SrvType xmpp_client;
    public static final SrvType xmpp_server;
    public final SrvProto proto;
    public final SrvService service;

    static {
        SrvService srvService = SrvService.xmpp_client;
        SrvProto srvProto = SrvProto.tcp;
        SrvType srvType = new SrvType("xmpp_client", 0, srvService, srvProto);
        xmpp_client = srvType;
        SrvType srvType2 = new SrvType("xmpp_server", 1, SrvService.xmpp_server, srvProto);
        xmpp_server = srvType2;
        f92832a = new SrvType[]{srvType, srvType2};
    }

    private SrvType(String str, int i4, SrvService srvService, SrvProto srvProto) {
        this.service = srvService;
        this.proto = srvProto;
    }

    public static SrvType valueOf(String str) {
        return (SrvType) Enum.valueOf(SrvType.class, str);
    }

    public static SrvType[] values() {
        return (SrvType[]) f92832a.clone();
    }
}
