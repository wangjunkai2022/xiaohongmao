package com.qennnsad.aknkaksd.util.translation;

import com.hbb20.CountryCodePicker;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: Translator.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u0000 \t2\u00020\u0001:\u0002\t\nJ.\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H&¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/util/translation/Translator;", "", "", "origText", "Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;", "direction", "Lkotlin/Function1;", "", "onTranslationComplete", "a", "Direction", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface Translator {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final a f55053a = a.f55056a;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum ZH uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* compiled from: Translator.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\b\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;", "", "", "a", "Ljava/lang/String;", "getCode", "()Ljava/lang/String;", "code", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "ZH", "JA", "AUTO", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class Direction {
        public static final Direction AUTO;
        public static final Direction JA;
        public static final Direction ZH;

        /* renamed from: b  reason: collision with root package name */
        private static final /* synthetic */ Direction[] f55054b;
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private final String f55055a;

        static {
            a aVar = Translator.f55053a;
            ZH = new Direction("ZH", 0, aVar.a());
            JA = new Direction("JA", 1, aVar.d());
            AUTO = new Direction("AUTO", 2, null);
            f55054b = a();
        }

        private Direction(String str, int i4, String str2) {
            this.f55055a = str2;
        }

        private static final /* synthetic */ Direction[] a() {
            return new Direction[]{ZH, JA, AUTO};
        }

        public static Direction valueOf(String str) {
            return (Direction) Enum.valueOf(Direction.class, str);
        }

        public static Direction[] values() {
            return (Direction[]) f55054b.clone();
        }

        @m8.h
        public final String getCode() {
            return this.f55055a;
        }
    }

    /* compiled from: Translator.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u001f\u0010\b\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001f\u0010\u000b\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\u0005\u001a\u0004\b\n\u0010\u0007R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0005\u001a\u0004\b\u0004\u0010\u0007R\u0017\u0010\u000e\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u0005\u001a\u0004\b\t\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/qennnsad/aknkaksd/util/translation/Translator$a;", "", "", "kotlin.jvm.PlatformType", "b", "Ljava/lang/String;", "d", "()Ljava/lang/String;", "LANG_JPN", "c", "a", "LANG_CHN", "LANG_CHN_SIMPLIFIED", "e", "LANG_CHN_TRADITIONAL", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f55056a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final String f55057b = CountryCodePicker.Language.JAPANESE.getCode();

        /* renamed from: c  reason: collision with root package name */
        private static final String f55058c;
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private static final String f55059d;
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        private static final String f55060e;

        static {
            String code = CountryCodePicker.Language.CHINESE_SIMPLIFIED.getCode();
            f55058c = code;
            f55059d = code + "-CN";
            f55060e = code + "-TW";
        }

        private a() {
        }

        public final String a() {
            return f55058c;
        }

        @m8.g
        public final String b() {
            return f55059d;
        }

        @m8.g
        public final String c() {
            return f55060e;
        }

        public final String d() {
            return f55057b;
        }
    }

    void a(@m8.g String str, @m8.g Direction direction, @m8.h Function1<? super String, Unit> function1);
}
