package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import y2.d0;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "GoogleSignInOptionsCreator")
/* loaded from: classes2.dex */
public class GoogleSignInOptions extends AbstractSafeParcelable implements a.d.f, ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;
    @NonNull
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN;
    @NonNull
    public static final GoogleSignInOptions DEFAULT_SIGN_IN;
    @NonNull
    @d0
    public static final Scope zaa = new Scope(n.f29237a);
    @NonNull
    @d0
    public static final Scope zab = new Scope("email");
    @NonNull
    @d0
    public static final Scope zac = new Scope(n.f29239c);
    @NonNull
    @d0
    public static final Scope zad;
    @NonNull
    @d0
    public static final Scope zae;
    private static Comparator<Scope> zag;
    @SafeParcelable.g(id = 1)
    final int zaf;
    @SafeParcelable.c(getter = "getScopes", id = 2)
    private final ArrayList<Scope> zah;
    @Nullable
    @SafeParcelable.c(getter = "getAccount", id = 3)
    private Account zai;
    @SafeParcelable.c(getter = "isIdTokenRequested", id = 4)
    private boolean zaj;
    @SafeParcelable.c(getter = "isServerAuthCodeRequested", id = 5)
    private final boolean zak;
    @SafeParcelable.c(getter = "isForceCodeForRefreshToken", id = 6)
    private final boolean zal;
    @Nullable
    @SafeParcelable.c(getter = "getServerClientId", id = 7)
    private String zam;
    @Nullable
    @SafeParcelable.c(getter = "getHostedDomain", id = 8)
    private String zan;
    @SafeParcelable.c(getter = "getExtensions", id = 9)
    private ArrayList<GoogleSignInOptionsExtensionParcelable> zao;
    @Nullable
    @SafeParcelable.c(getter = "getLogSessionId", id = 10)
    private String zap;
    private Map<Integer, GoogleSignInOptionsExtensionParcelable> zaq;

    static {
        Scope scope = new Scope(n.f29243g);
        zad = scope;
        zae = new Scope(n.f29242f);
        a aVar = new a();
        aVar.d();
        aVar.f();
        DEFAULT_SIGN_IN = aVar.b();
        a aVar2 = new a();
        aVar2.g(scope, new Scope[0]);
        DEFAULT_GAMES_SIGN_IN = aVar2.b();
        CREATOR = new f();
        zag = new d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public GoogleSignInOptions(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) ArrayList<Scope> arrayList, @Nullable @SafeParcelable.e(id = 3) Account account, @SafeParcelable.e(id = 4) boolean z9, @SafeParcelable.e(id = 5) boolean z10, @SafeParcelable.e(id = 6) boolean z11, @Nullable @SafeParcelable.e(id = 7) String str, @Nullable @SafeParcelable.e(id = 8) String str2, @SafeParcelable.e(id = 9) ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2, @Nullable @SafeParcelable.e(id = 10) String str3) {
        this(i4, arrayList, account, z9, z10, z11, str, str2, zam(arrayList2), str3);
    }

    @Nullable
    public static GoogleSignInOptions zab(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i4 = 0; i4 < length; i4++) {
            hashSet.add(new Scope(jSONArray.getString(i4)));
        }
        String optString = jSONObject.has("accountName") ? jSONObject.optString("accountName") : null;
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(optString) ? new Account(optString, com.google.android.gms.common.internal.b.f29059a) : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null, jSONObject.has("hostedDomain") ? jSONObject.optString("hostedDomain") : null, new HashMap(), (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> zam(@Nullable List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.getType()), googleSignInOptionsExtensionParcelable);
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        if (r1.equals(r4.getAccount()) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(@androidx.annotation.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable> r1 = r3.zao     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 > 0) goto L90
            java.util.ArrayList<com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable> r1 = r4.zao     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 <= 0) goto L18
            goto L90
        L18:
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.zah     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.getScopes()     // Catch: java.lang.ClassCastException -> L90
            int r2 = r2.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.util.ArrayList<com.google.android.gms.common.api.Scope> r1 = r3.zah     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.getScopes()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.containsAll(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L35
            goto L90
        L35:
            android.accounts.Account r1 = r3.zai     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L40
            android.accounts.Account r1 = r4.getAccount()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L90
            goto L4a
        L40:
            android.accounts.Account r2 = r4.getAccount()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
        L4a:
            java.lang.String r1 = r3.zam     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L5d
            java.lang.String r1 = r4.getServerClientId()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
            goto L6a
        L5d:
            java.lang.String r1 = r3.zam     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r2 = r4.getServerClientId()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L6a
            goto L90
        L6a:
            boolean r1 = r3.zal     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.isForceCodeForRefreshToken()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.zaj     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.isIdTokenRequested()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.zak     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.isServerAuthCodeRequested()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.lang.String r1 = r3.zap     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r4 = r4.getLogSessionId()     // Catch: java.lang.ClassCastException -> L90
            boolean r4 = android.text.TextUtils.equals(r1, r4)     // Catch: java.lang.ClassCastException -> L90
            if (r4 == 0) goto L90
            r4 = 1
            return r4
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    @Nullable
    @u2.a
    public Account getAccount() {
        return this.zai;
    }

    @NonNull
    @u2.a
    public ArrayList<GoogleSignInOptionsExtensionParcelable> getExtensions() {
        return this.zao;
    }

    @Nullable
    @u2.a
    public String getLogSessionId() {
        return this.zap;
    }

    @NonNull
    public Scope[] getScopeArray() {
        ArrayList<Scope> arrayList = this.zah;
        return (Scope[]) arrayList.toArray(new Scope[arrayList.size()]);
    }

    @NonNull
    @u2.a
    public ArrayList<Scope> getScopes() {
        return new ArrayList<>(this.zah);
    }

    @Nullable
    @u2.a
    public String getServerClientId() {
        return this.zam;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.zah;
        int size = arrayList2.size();
        for (int i4 = 0; i4 < size; i4++) {
            arrayList.add(arrayList2.get(i4).getScopeUri());
        }
        Collections.sort(arrayList);
        com.google.android.gms.auth.api.signin.internal.a aVar = new com.google.android.gms.auth.api.signin.internal.a();
        aVar.a(arrayList);
        aVar.a(this.zai);
        aVar.a(this.zam);
        aVar.c(this.zal);
        aVar.c(this.zaj);
        aVar.c(this.zak);
        aVar.a(this.zap);
        return aVar.b();
    }

    @u2.a
    public boolean isForceCodeForRefreshToken() {
        return this.zal;
    }

    @u2.a
    public boolean isIdTokenRequested() {
        return this.zaj;
    }

    @u2.a
    public boolean isServerAuthCodeRequested() {
        return this.zak;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaf);
        w2.a.d0(parcel, 2, getScopes(), false);
        w2.a.S(parcel, 3, getAccount(), i4, false);
        w2.a.g(parcel, 4, isIdTokenRequested());
        w2.a.g(parcel, 5, isServerAuthCodeRequested());
        w2.a.g(parcel, 6, isForceCodeForRefreshToken());
        w2.a.Y(parcel, 7, getServerClientId(), false);
        w2.a.Y(parcel, 8, this.zan, false);
        w2.a.d0(parcel, 9, getExtensions(), false);
        w2.a.Y(parcel, 10, getLogSessionId(), false);
        w2.a.b(parcel, a10);
    }

    @NonNull
    public final String zaf() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.zah, zag);
            Iterator<Scope> it = this.zah.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().getScopeUri());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = this.zai;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", this.zaj);
            jSONObject.put("forceCodeForRefreshToken", this.zal);
            jSONObject.put("serverAuthRequested", this.zak);
            if (!TextUtils.isEmpty(this.zam)) {
                jSONObject.put("serverClientId", this.zam);
            }
            if (!TextUtils.isEmpty(this.zan)) {
                jSONObject.put("hostedDomain", this.zan);
            }
            return jSONObject.toString();
        } catch (JSONException e4) {
            throw new RuntimeException(e4);
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Set<Scope> f28460a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f28461b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f28462c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f28463d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private String f28464e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private Account f28465f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f28466g;

        /* renamed from: h  reason: collision with root package name */
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> f28467h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private String f28468i;

        public a() {
            this.f28460a = new HashSet();
            this.f28467h = new HashMap();
        }

        private final String m(String str) {
            u.g(str);
            String str2 = this.f28464e;
            boolean z9 = true;
            if (str2 != null && !str2.equals(str)) {
                z9 = false;
            }
            u.b(z9, "two different server client ids provided");
            return str;
        }

        @NonNull
        public a a(@NonNull com.google.android.gms.auth.api.signin.a aVar) {
            if (!this.f28467h.containsKey(Integer.valueOf(aVar.a()))) {
                List<Scope> b10 = aVar.b();
                if (b10 != null) {
                    this.f28460a.addAll(b10);
                }
                this.f28467h.put(Integer.valueOf(aVar.a()), new GoogleSignInOptionsExtensionParcelable(aVar));
                return this;
            }
            throw new IllegalStateException("Only one extension per type may be added");
        }

        @NonNull
        public GoogleSignInOptions b() {
            if (this.f28460a.contains(GoogleSignInOptions.zae)) {
                Set<Scope> set = this.f28460a;
                Scope scope = GoogleSignInOptions.zad;
                if (set.contains(scope)) {
                    this.f28460a.remove(scope);
                }
            }
            if (this.f28463d && (this.f28465f == null || !this.f28460a.isEmpty())) {
                d();
            }
            return new GoogleSignInOptions(new ArrayList(this.f28460a), this.f28465f, this.f28463d, this.f28461b, this.f28462c, this.f28464e, this.f28466g, this.f28467h, this.f28468i);
        }

        @NonNull
        public a c() {
            this.f28460a.add(GoogleSignInOptions.zab);
            return this;
        }

        @NonNull
        public a d() {
            this.f28460a.add(GoogleSignInOptions.zac);
            return this;
        }

        @NonNull
        public a e(@NonNull String str) {
            this.f28463d = true;
            m(str);
            this.f28464e = str;
            return this;
        }

        @NonNull
        public a f() {
            this.f28460a.add(GoogleSignInOptions.zaa);
            return this;
        }

        @NonNull
        public a g(@NonNull Scope scope, @NonNull Scope... scopeArr) {
            this.f28460a.add(scope);
            this.f28460a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        @NonNull
        public a h(@NonNull String str) {
            i(str, false);
            return this;
        }

        @NonNull
        public a i(@NonNull String str, boolean z9) {
            this.f28461b = true;
            m(str);
            this.f28464e = str;
            this.f28462c = z9;
            return this;
        }

        @NonNull
        public a j(@NonNull String str) {
            this.f28465f = new Account(u.g(str), com.google.android.gms.common.internal.b.f29059a);
            return this;
        }

        @NonNull
        public a k(@NonNull String str) {
            this.f28466g = u.g(str);
            return this;
        }

        @NonNull
        @u2.a
        public a l(@NonNull String str) {
            this.f28468i = str;
            return this;
        }

        public a(@NonNull GoogleSignInOptions googleSignInOptions) {
            this.f28460a = new HashSet();
            this.f28467h = new HashMap();
            u.k(googleSignInOptions);
            this.f28460a = new HashSet(googleSignInOptions.zah);
            this.f28461b = googleSignInOptions.zak;
            this.f28462c = googleSignInOptions.zal;
            this.f28463d = googleSignInOptions.zaj;
            this.f28464e = googleSignInOptions.zam;
            this.f28465f = googleSignInOptions.zai;
            this.f28466g = googleSignInOptions.zan;
            this.f28467h = GoogleSignInOptions.zam(googleSignInOptions.zao);
            this.f28468i = googleSignInOptions.zap;
        }
    }

    private GoogleSignInOptions(int i4, ArrayList<Scope> arrayList, @Nullable Account account, boolean z9, boolean z10, boolean z11, @Nullable String str, @Nullable String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map, @Nullable String str3) {
        this.zaf = i4;
        this.zah = arrayList;
        this.zai = account;
        this.zaj = z9;
        this.zak = z10;
        this.zal = z11;
        this.zam = str;
        this.zan = str2;
        this.zao = new ArrayList<>(map.values());
        this.zaq = map;
        this.zap = str3;
    }
}
