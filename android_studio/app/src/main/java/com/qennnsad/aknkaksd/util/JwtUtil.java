package com.qennnsad.aknkaksd.util;

import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import io.sentry.protocol.y;
import java.io.UnsupportedEncodingException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Security;
import java.security.interfaces.ECPublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.json.JSONObject;

/* compiled from: JwtUtil.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001eB\u0011\b\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\f\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0012\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0011\u001a\u00020\rJ\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\b\b\u0002\u0010\u0013\u001a\u00020\rJ$\u0010\u0018\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0016\u001a\u00020\b2\b\b\u0002\u0010\u0017\u001a\u00020\bH\u0007¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/util/JwtUtil;", "", "", "serverDate", "Ljava/util/Date;", "expireDate", "", "printDates", "", "backup", "Ljava/security/PublicKey;", "genEcPubKey", "prepareBouncyCastle", "", "strEncoded", "getJson", "jwt", "targetField", "getJwtBodyField", y.b.f83916d, "printJsonParts", "ticketJwt", "expiryOnly", "keyBackup", "isTicketValid", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;)V", "Companion", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class JwtUtil {
    @m8.g
    public static final a Companion = new a(null);
    @m8.g
    public static final String TAG = "JwtUtil";
    @m8.g
    private static final String TICKET_PUB_KEY = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEUauU14ii/x9GTM5zGD18fF1J/Q1WnkDLM31/KMFjIf/pKC+Ooat90DhQTRm+XEoXyI0hGk/nNpb8rF4dHAPdvQ==";
    @m8.g
    private static final String TICKET_PUB_KEY2 = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE549Pi7bzXwaVBH/kY2Z7PNtbfZ6D8+lZqalJRwIU4/nba28Yw2PILGycVius4RNGv0iqa6gP0kO94X98kCX7WA==";
    @m8.g
    private final g5.a localDataManager;

    /* compiled from: JwtUtil.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u0002*\u00020\u0002H\u0007R\u0014\u0010\u0004\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/util/JwtUtil$a;", "", "", "a", "TAG", "Ljava/lang/String;", "TICKET_PUB_KEY", "TICKET_PUB_KEY2", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @m8.h
        public final String a(@m8.g String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(shaded.org.apache.commons.codec.digest.f.f93510b);
                byte[] bytes = str.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                byte[] digest = messageDigest.digest(bytes);
                StringBuffer stringBuffer = new StringBuffer();
                for (byte b10 : digest) {
                    String hexString = Integer.toHexString((b10 & 255) | 256);
                    Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(array[i].toInt() and 0xFF or 0x100)");
                    String substring = hexString.substring(1, 3);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    stringBuffer.append(substring);
                }
                return stringBuffer.toString();
            } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
                return null;
            }
        }
    }

    @u7.a
    public JwtUtil(@m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.localDataManager = localDataManager;
        prepareBouncyCastle();
    }

    @JvmStatic
    @m8.h
    public static final String asMd5(@m8.g String str) {
        return Companion.a(str);
    }

    private final PublicKey genEcPubKey(boolean z9) throws Exception {
        return KeyFactory.getInstance("ECDSA", BouncyCastleProvider.PROVIDER_NAME).generatePublic(new X509EncodedKeySpec(Base64.decode(!z9 ? TICKET_PUB_KEY : TICKET_PUB_KEY2, 0)));
    }

    private final String getJson(String str) throws UnsupportedEncodingException {
        byte[] decode = Base64.decode(str, 8);
        Intrinsics.checkNotNullExpressionValue(decode, "decode(strEncoded, Base64.URL_SAFE)");
        return new String(decode, Charsets.UTF_8);
    }

    public static /* synthetic */ boolean isTicketValid$default(JwtUtil jwtUtil, String str, boolean z9, boolean z10, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z10 = false;
        }
        return jwtUtil.isTicketValid(str, z9, z10);
    }

    private final void prepareBouncyCastle() {
        Security.removeProvider(BouncyCastleProvider.PROVIDER_NAME);
        Security.insertProviderAt(new BouncyCastleProvider(), Build.VERSION.SDK_INT == 21 ? 1 : 0);
    }

    private final void printDates(long j4, Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd MMM yyyy HH:mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        String format = simpleDateFormat.format(Long.valueOf(j4));
        String format2 = simpleDateFormat.format(date);
        o0.a(TAG, "Ticket JWT Expires at " + format2 + ", Server Date: " + format);
    }

    public static /* synthetic */ void printJsonParts$default(JwtUtil jwtUtil, String str, String str2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            str2 = "";
        }
        jwtUtil.printJsonParts(str, str2);
    }

    @m8.g
    public final String getJwtBodyField(@m8.h String str, @m8.g String targetField) {
        Intrinsics.checkNotNullParameter(targetField, "targetField");
        if (str == null || str.length() == 0) {
            return "";
        }
        Object[] array = new Regex("\\.").split(str, 0).toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        String optString = new JSONObject(getJson(((String[]) array)[1])).optString(targetField, "");
        Intrinsics.checkNotNullExpressionValue(optString, "JSONObject(body).optString(targetField, \"\")");
        return optString;
    }

    @JvmOverloads
    public final boolean isTicketValid(@m8.h String str, boolean z9) {
        return isTicketValid$default(this, str, z9, false, 4, null);
    }

    @JvmOverloads
    public final boolean isTicketValid(@m8.h String str, boolean z9, boolean z10) {
        o0.a(TAG, "Validating Ticket JWT... expiracyOnly=" + z9 + " keyBackup=" + z10);
        if (TextUtils.isEmpty(str)) {
            o0.a(TAG, "Ticket JWT Empty!");
            return false;
        }
        Intrinsics.checkNotNull(str);
        printJsonParts(str, "Ticket");
        try {
            com.auth0.jwt.interfaces.c b10 = com.auth0.jwt.c.b(str);
            if (this.localDataManager.v() >= b10.b().getTime()) {
                o0.a(TAG, "Ticket JWT Expired!");
                return false;
            } else if (z9) {
                o0.a(TAG, "Ticket JWT is still not expired. Valid!");
                return true;
            } else {
                PublicKey genEcPubKey = genEcPubKey(z10);
                Intrinsics.checkNotNull(genEcPubKey, "null cannot be cast to non-null type java.security.interfaces.ECPublicKey");
                com.auth0.jwt.algorithms.a c10 = com.auth0.jwt.algorithms.a.c((ECPublicKey) genEcPubKey, null);
                Intrinsics.checkNotNullExpressionValue(c10, "ECDSA256(ecdsa256PublicKey as ECPublicKey, null)");
                c10.G(b10);
                o0.a(TAG, "Ticket JWT Valid!");
                return true;
            }
        } catch (Exception e4) {
            o0.d(TAG, "Error validating ticket JWT:", e4);
            e4.printStackTrace();
            if (z10) {
                return false;
            }
            return isTicketValid(str, z9, true);
        }
    }

    public final void printJsonParts(@m8.g String jwt, @m8.g String tag) {
        Intrinsics.checkNotNullParameter(jwt, "jwt");
        Intrinsics.checkNotNullParameter(tag, "tag");
        try {
            Object[] array = new Regex("\\.").split(jwt, 0).toArray(new String[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            String[] strArr = (String[]) array;
            o0.a(TAG, tag + " Header: " + getJson(strArr[0]));
            o0.a(TAG, tag + " Body: " + getJson(strArr[1]));
        } catch (UnsupportedEncodingException e4) {
            o0.d(TAG, "Error decoding json parts", e4);
        }
    }
}
