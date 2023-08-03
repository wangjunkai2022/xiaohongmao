package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import y2.d0;
import y2.g;
import y2.k;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "GoogleSignInAccountCreator")
/* loaded from: classes2.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new c();
    @NonNull
    @d0
    public static g zaa = k.d();
    @SafeParcelable.g(id = 1)
    final int zab;
    @SafeParcelable.c(id = 10)
    List<Scope> zac;
    @Nullable
    @SafeParcelable.c(getter = "getId", id = 2)
    private String zad;
    @Nullable
    @SafeParcelable.c(getter = "getIdToken", id = 3)
    private String zae;
    @Nullable
    @SafeParcelable.c(getter = "getEmail", id = 4)
    private String zaf;
    @Nullable
    @SafeParcelable.c(getter = "getDisplayName", id = 5)
    private String zag;
    @Nullable
    @SafeParcelable.c(getter = "getPhotoUrl", id = 6)
    private Uri zah;
    @Nullable
    @SafeParcelable.c(getter = "getServerAuthCode", id = 7)
    private String zai;
    @SafeParcelable.c(getter = "getExpirationTimeSecs", id = 8)
    private long zaj;
    @SafeParcelable.c(getter = "getObfuscatedIdentifier", id = 9)
    private String zak;
    @Nullable
    @SafeParcelable.c(getter = "getGivenName", id = 11)
    private String zal;
    @Nullable
    @SafeParcelable.c(getter = "getFamilyName", id = 12)
    private String zam;
    private Set<Scope> zan = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public GoogleSignInAccount(@SafeParcelable.e(id = 1) int i4, @Nullable @SafeParcelable.e(id = 2) String str, @Nullable @SafeParcelable.e(id = 3) String str2, @Nullable @SafeParcelable.e(id = 4) String str3, @Nullable @SafeParcelable.e(id = 5) String str4, @Nullable @SafeParcelable.e(id = 6) Uri uri, @Nullable @SafeParcelable.e(id = 7) String str5, @SafeParcelable.e(id = 8) long j4, @SafeParcelable.e(id = 9) String str6, @SafeParcelable.e(id = 10) List<Scope> list, @Nullable @SafeParcelable.e(id = 11) String str7, @Nullable @SafeParcelable.e(id = 12) String str8) {
        this.zab = i4;
        this.zad = str;
        this.zae = str2;
        this.zaf = str3;
        this.zag = str4;
        this.zah = uri;
        this.zai = str5;
        this.zaj = j4;
        this.zak = str6;
        this.zac = list;
        this.zal = str7;
        this.zam = str8;
    }

    @NonNull
    @u2.a
    public static GoogleSignInAccount createDefault() {
        return zae(new Account("<<default account>>", com.google.android.gms.common.internal.b.f29059a), new HashSet());
    }

    @NonNull
    @u2.a
    public static GoogleSignInAccount fromAccount(@NonNull Account account) {
        return zae(account, new ArraySet());
    }

    @NonNull
    public static GoogleSignInAccount zaa(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Uri uri, @Nullable Long l10, @NonNull String str7, @NonNull Set<Scope> set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l10.longValue(), u.g(str7), new ArrayList((Collection) u.k(set)), str5, str6);
    }

    @Nullable
    public static GoogleSignInAccount zab(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl");
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i4 = 0; i4 < length; i4++) {
            hashSet.add(new Scope(jSONArray.getString(i4)));
        }
        GoogleSignInAccount zaa2 = zaa(jSONObject.optString("id"), jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null, jSONObject.has("email") ? jSONObject.optString("email") : null, jSONObject.has("displayName") ? jSONObject.optString("displayName") : null, jSONObject.has("givenName") ? jSONObject.optString("givenName") : null, jSONObject.has("familyName") ? jSONObject.optString("familyName") : null, parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        zaa2.zai = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return zaa2;
    }

    private static GoogleSignInAccount zae(Account account, Set<Scope> set) {
        return zaa(null, null, account.name, null, null, null, null, 0L, account.name, set);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof GoogleSignInAccount) {
            GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
            return googleSignInAccount.zak.equals(this.zak) && googleSignInAccount.getRequestedScopes().equals(getRequestedScopes());
        }
        return false;
    }

    @Nullable
    public Account getAccount() {
        String str = this.zaf;
        if (str == null) {
            return null;
        }
        return new Account(str, com.google.android.gms.common.internal.b.f29059a);
    }

    @Nullable
    public String getDisplayName() {
        return this.zag;
    }

    @Nullable
    public String getEmail() {
        return this.zaf;
    }

    @Nullable
    public String getFamilyName() {
        return this.zam;
    }

    @Nullable
    public String getGivenName() {
        return this.zal;
    }

    @NonNull
    public Set<Scope> getGrantedScopes() {
        return new HashSet(this.zac);
    }

    @Nullable
    public String getId() {
        return this.zad;
    }

    @Nullable
    public String getIdToken() {
        return this.zae;
    }

    @Nullable
    public Uri getPhotoUrl() {
        return this.zah;
    }

    @NonNull
    @u2.a
    public Set<Scope> getRequestedScopes() {
        HashSet hashSet = new HashSet(this.zac);
        hashSet.addAll(this.zan);
        return hashSet;
    }

    @Nullable
    public String getServerAuthCode() {
        return this.zai;
    }

    public int hashCode() {
        return ((this.zak.hashCode() + 527) * 31) + getRequestedScopes().hashCode();
    }

    @u2.a
    public boolean isExpired() {
        return zaa.a() / 1000 >= this.zaj + (-300);
    }

    @NonNull
    @u2.a
    public GoogleSignInAccount requestExtraScopes(@NonNull Scope... scopeArr) {
        if (scopeArr != null) {
            Collections.addAll(this.zan, scopeArr);
        }
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zab);
        w2.a.Y(parcel, 2, getId(), false);
        w2.a.Y(parcel, 3, getIdToken(), false);
        w2.a.Y(parcel, 4, getEmail(), false);
        w2.a.Y(parcel, 5, getDisplayName(), false);
        w2.a.S(parcel, 6, getPhotoUrl(), i4, false);
        w2.a.Y(parcel, 7, getServerAuthCode(), false);
        w2.a.K(parcel, 8, this.zaj);
        w2.a.Y(parcel, 9, this.zak, false);
        w2.a.d0(parcel, 10, this.zac, false);
        w2.a.Y(parcel, 11, getGivenName(), false);
        w2.a.Y(parcel, 12, getFamilyName(), false);
        w2.a.b(parcel, a10);
    }

    @NonNull
    public final String zac() {
        return this.zak;
    }

    @NonNull
    public final String zad() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (getId() != null) {
                jSONObject.put("id", getId());
            }
            if (getIdToken() != null) {
                jSONObject.put("tokenId", getIdToken());
            }
            if (getEmail() != null) {
                jSONObject.put("email", getEmail());
            }
            if (getDisplayName() != null) {
                jSONObject.put("displayName", getDisplayName());
            }
            if (getGivenName() != null) {
                jSONObject.put("givenName", getGivenName());
            }
            if (getFamilyName() != null) {
                jSONObject.put("familyName", getFamilyName());
            }
            Uri photoUrl = getPhotoUrl();
            if (photoUrl != null) {
                jSONObject.put("photoUrl", photoUrl.toString());
            }
            if (getServerAuthCode() != null) {
                jSONObject.put("serverAuthCode", getServerAuthCode());
            }
            jSONObject.put("expirationTime", this.zaj);
            jSONObject.put("obfuscatedIdentifier", this.zak);
            JSONArray jSONArray = new JSONArray();
            List<Scope> list = this.zac;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, b.f28471a);
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.getScopeUri());
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            return jSONObject.toString();
        } catch (JSONException e4) {
            throw new RuntimeException(e4);
        }
    }
}
