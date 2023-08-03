package okhttp3.internal.ws;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import m8.h;
import okhttp3.Headers;
import okhttp3.internal.Util;

/* compiled from: WebSocketExtensions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cBE\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003JN\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\u000e\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions;", "", "perMessageDeflate", "", "clientMaxWindowBits", "", "clientNoContextTakeover", "serverMaxWindowBits", "serverNoContextTakeover", "unknownValues", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V", "Ljava/lang/Integer;", "component1", "component2", "()Ljava/lang/Integer;", "component3", "component4", "component5", "component6", "copy", "(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)Lokhttp3/internal/ws/WebSocketExtensions;", "equals", "other", "hashCode", "noContextTakeover", "clientOriginated", "toString", "", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class WebSocketExtensions {
    public static final Companion Companion = new Companion(null);
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";
    @h
    @JvmField
    public final Integer clientMaxWindowBits;
    @JvmField
    public final boolean clientNoContextTakeover;
    @JvmField
    public final boolean perMessageDeflate;
    @h
    @JvmField
    public final Integer serverMaxWindowBits;
    @JvmField
    public final boolean serverNoContextTakeover;
    @JvmField
    public final boolean unknownValues;

    /* compiled from: WebSocketExtensions.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions$Companion;", "", "()V", "HEADER_WEB_SOCKET_EXTENSION", "", "parse", "Lokhttp3/internal/ws/WebSocketExtensions;", "responseHeaders", "Lokhttp3/Headers;", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        @g
        public final WebSocketExtensions parse(@g Headers responseHeaders) throws IOException {
            boolean equals;
            boolean equals2;
            boolean equals3;
            boolean equals4;
            boolean equals5;
            boolean equals6;
            Integer intOrNull;
            Integer intOrNull2;
            Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
            int size = responseHeaders.size();
            boolean z9 = false;
            Integer num = null;
            boolean z10 = false;
            Integer num2 = null;
            boolean z11 = false;
            boolean z12 = false;
            for (int i4 = 0; i4 < size; i4++) {
                equals = StringsKt__StringsJVMKt.equals(responseHeaders.name(i4), WebSocketExtensions.HEADER_WEB_SOCKET_EXTENSION, true);
                if (equals) {
                    String value = responseHeaders.value(i4);
                    int i10 = 0;
                    while (i10 < value.length()) {
                        int delimiterOffset$default = Util.delimiterOffset$default(value, ',', i10, 0, 4, (Object) null);
                        int delimiterOffset = Util.delimiterOffset(value, ';', i10, delimiterOffset$default);
                        String trimSubstring = Util.trimSubstring(value, i10, delimiterOffset);
                        int i11 = delimiterOffset + 1;
                        equals2 = StringsKt__StringsJVMKt.equals(trimSubstring, "permessage-deflate", true);
                        if (equals2) {
                            if (z9) {
                                z12 = true;
                            }
                            while (i11 < delimiterOffset$default) {
                                int delimiterOffset2 = Util.delimiterOffset(value, ';', i11, delimiterOffset$default);
                                int delimiterOffset3 = Util.delimiterOffset(value, '=', i11, delimiterOffset2);
                                String trimSubstring2 = Util.trimSubstring(value, i11, delimiterOffset3);
                                String removeSurrounding = delimiterOffset3 < delimiterOffset2 ? StringsKt__StringsKt.removeSurrounding(Util.trimSubstring(value, delimiterOffset3 + 1, delimiterOffset2), (CharSequence) "\"") : null;
                                int i12 = delimiterOffset2 + 1;
                                equals3 = StringsKt__StringsJVMKt.equals(trimSubstring2, "client_max_window_bits", true);
                                if (equals3) {
                                    if (num != null) {
                                        z12 = true;
                                    }
                                    if (removeSurrounding != null) {
                                        intOrNull2 = StringsKt__StringNumberConversionsKt.toIntOrNull(removeSurrounding);
                                        num = intOrNull2;
                                    } else {
                                        num = null;
                                    }
                                    if (num != null) {
                                        i11 = i12;
                                    }
                                    z12 = true;
                                    i11 = i12;
                                } else {
                                    equals4 = StringsKt__StringsJVMKt.equals(trimSubstring2, "client_no_context_takeover", true);
                                    if (equals4) {
                                        if (z10) {
                                            z12 = true;
                                        }
                                        if (removeSurrounding != null) {
                                            z12 = true;
                                        }
                                        z10 = true;
                                    } else {
                                        equals5 = StringsKt__StringsJVMKt.equals(trimSubstring2, "server_max_window_bits", true);
                                        if (equals5) {
                                            if (num2 != null) {
                                                z12 = true;
                                            }
                                            if (removeSurrounding != null) {
                                                intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(removeSurrounding);
                                                num2 = intOrNull;
                                            } else {
                                                num2 = null;
                                            }
                                            if (num2 != null) {
                                            }
                                            z12 = true;
                                        } else {
                                            equals6 = StringsKt__StringsJVMKt.equals(trimSubstring2, "server_no_context_takeover", true);
                                            if (equals6) {
                                                if (z11) {
                                                    z12 = true;
                                                }
                                                if (removeSurrounding != null) {
                                                    z12 = true;
                                                }
                                                z11 = true;
                                            }
                                            z12 = true;
                                        }
                                    }
                                    i11 = i12;
                                }
                            }
                            i10 = i11;
                            z9 = true;
                        } else {
                            i10 = i11;
                            z12 = true;
                        }
                    }
                }
            }
            return new WebSocketExtensions(z9, num, z10, num2, z11, z12);
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public WebSocketExtensions(boolean z9, @h Integer num, boolean z10, @h Integer num2, boolean z11, boolean z12) {
        this.perMessageDeflate = z9;
        this.clientMaxWindowBits = num;
        this.clientNoContextTakeover = z10;
        this.serverMaxWindowBits = num2;
        this.serverNoContextTakeover = z11;
        this.unknownValues = z12;
    }

    public static /* synthetic */ WebSocketExtensions copy$default(WebSocketExtensions webSocketExtensions, boolean z9, Integer num, boolean z10, Integer num2, boolean z11, boolean z12, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = webSocketExtensions.perMessageDeflate;
        }
        if ((i4 & 2) != 0) {
            num = webSocketExtensions.clientMaxWindowBits;
        }
        Integer num3 = num;
        if ((i4 & 4) != 0) {
            z10 = webSocketExtensions.clientNoContextTakeover;
        }
        boolean z13 = z10;
        if ((i4 & 8) != 0) {
            num2 = webSocketExtensions.serverMaxWindowBits;
        }
        Integer num4 = num2;
        if ((i4 & 16) != 0) {
            z11 = webSocketExtensions.serverNoContextTakeover;
        }
        boolean z14 = z11;
        if ((i4 & 32) != 0) {
            z12 = webSocketExtensions.unknownValues;
        }
        return webSocketExtensions.copy(z9, num3, z13, num4, z14, z12);
    }

    public final boolean component1() {
        return this.perMessageDeflate;
    }

    @h
    public final Integer component2() {
        return this.clientMaxWindowBits;
    }

    public final boolean component3() {
        return this.clientNoContextTakeover;
    }

    @h
    public final Integer component4() {
        return this.serverMaxWindowBits;
    }

    public final boolean component5() {
        return this.serverNoContextTakeover;
    }

    public final boolean component6() {
        return this.unknownValues;
    }

    @g
    public final WebSocketExtensions copy(boolean z9, @h Integer num, boolean z10, @h Integer num2, boolean z11, boolean z12) {
        return new WebSocketExtensions(z9, num, z10, num2, z11, z12);
    }

    public boolean equals(@h Object obj) {
        if (this != obj) {
            if (obj instanceof WebSocketExtensions) {
                WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
                return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && Intrinsics.areEqual(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && Intrinsics.areEqual(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    public int hashCode() {
        boolean z9 = this.perMessageDeflate;
        ?? r02 = z9;
        if (z9) {
            r02 = 1;
        }
        int i4 = r02 * 31;
        Integer num = this.clientMaxWindowBits;
        int hashCode = (i4 + (num != null ? num.hashCode() : 0)) * 31;
        ?? r22 = this.clientNoContextTakeover;
        int i10 = r22;
        if (r22 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode + i10) * 31;
        Integer num2 = this.serverMaxWindowBits;
        int hashCode2 = (i11 + (num2 != null ? num2.hashCode() : 0)) * 31;
        ?? r23 = this.serverNoContextTakeover;
        int i12 = r23;
        if (r23 != 0) {
            i12 = 1;
        }
        int i13 = (hashCode2 + i12) * 31;
        boolean z10 = this.unknownValues;
        return i13 + (z10 ? 1 : z10 ? 1 : 0);
    }

    public final boolean noContextTakeover(boolean z9) {
        if (z9) {
            return this.clientNoContextTakeover;
        }
        return this.serverNoContextTakeover;
    }

    @g
    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ")";
    }

    public /* synthetic */ WebSocketExtensions(boolean z9, Integer num, boolean z10, Integer num2, boolean z11, boolean z12, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? false : z9, (i4 & 2) != 0 ? null : num, (i4 & 4) != 0 ? false : z10, (i4 & 8) == 0 ? num2 : null, (i4 & 16) != 0 ? false : z11, (i4 & 32) != 0 ? false : z12);
    }
}
