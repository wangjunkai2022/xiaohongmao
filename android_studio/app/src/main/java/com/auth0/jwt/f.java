package com.auth0.jwt;

import com.auth0.jwt.exceptions.AlgorithmMismatchException;
import com.auth0.jwt.exceptions.InvalidClaimException;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.exceptions.TokenExpiredException;
import com.auth0.jwt.impl.i;
import com.auth0.jwt.interfaces.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: JWTVerifier.java */
/* loaded from: classes.dex */
public final class f implements com.auth0.jwt.interfaces.g {

    /* renamed from: a  reason: collision with root package name */
    private final com.auth0.jwt.algorithms.a f7065a;

    /* renamed from: b  reason: collision with root package name */
    final Map<String, Object> f7066b;

    /* renamed from: c  reason: collision with root package name */
    private final com.auth0.jwt.interfaces.b f7067c;

    /* renamed from: d  reason: collision with root package name */
    private final com.auth0.jwt.impl.d f7068d = new com.auth0.jwt.impl.d();

    /* compiled from: JWTVerifier.java */
    /* loaded from: classes.dex */
    public static class a implements k {

        /* renamed from: a  reason: collision with root package name */
        private final com.auth0.jwt.algorithms.a f7069a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, Object> f7070b;

        /* renamed from: c  reason: collision with root package name */
        private long f7071c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f7072d;

        a(com.auth0.jwt.algorithms.a aVar) throws IllegalArgumentException {
            if (aVar != null) {
                this.f7069a = aVar;
                this.f7070b = new HashMap();
                this.f7071c = 0L;
                return;
            }
            throw new IllegalArgumentException("The Algorithm cannot be null.");
        }

        private void t() {
            if (!this.f7070b.containsKey(i.f7107g)) {
                this.f7070b.put(i.f7107g, Long.valueOf(this.f7071c));
            }
            if (!this.f7070b.containsKey(i.f7108h)) {
                this.f7070b.put(i.f7108h, Long.valueOf(this.f7071c));
            }
            if (this.f7072d) {
                this.f7070b.remove(i.f7109i);
            } else if (this.f7070b.containsKey(i.f7109i)) {
            } else {
                this.f7070b.put(i.f7109i, Long.valueOf(this.f7071c));
            }
        }

        private void u(String str) {
            if (str == null) {
                throw new IllegalArgumentException("The Custom Claim's name can't be null.");
            }
        }

        private void v(long j4) {
            if (j4 < 0) {
                throw new IllegalArgumentException("Leeway value can't be negative.");
            }
        }

        private void x(String str, Object obj) {
            if (obj == null) {
                this.f7070b.remove(str);
            } else {
                this.f7070b.put(str, obj);
            }
        }

        @Override // com.auth0.jwt.interfaces.k
        public k a(String... strArr) {
            x(i.f7105e, f.m(strArr) ? null : Arrays.asList(strArr));
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k b(long j4) throws IllegalArgumentException {
            v(j4);
            x(i.f7107g, Long.valueOf(j4));
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public f build() {
            return w(new com.auth0.jwt.b());
        }

        @Override // com.auth0.jwt.interfaces.k
        public k c(String str) {
            x(i.f7110j, str);
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k d(String str) {
            x(i.f7106f, str);
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k e(String str, Double d4) throws IllegalArgumentException {
            u(str);
            x(str, d4);
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k f(String str, Date date) throws IllegalArgumentException {
            u(str);
            x(str, date);
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k g(String... strArr) {
            x(i.f7111k, f.m(strArr) ? null : Arrays.asList(strArr));
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k h(String str, Long l10) throws IllegalArgumentException {
            u(str);
            x(str, l10);
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k i(String str, Long... lArr) throws IllegalArgumentException {
            u(str);
            x(str, lArr);
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k j(long j4) throws IllegalArgumentException {
            v(j4);
            x(i.f7109i, Long.valueOf(j4));
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k k() {
            this.f7072d = true;
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k l(String str, Integer... numArr) throws IllegalArgumentException {
            u(str);
            x(str, numArr);
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k m(String str, Boolean bool) throws IllegalArgumentException {
            u(str);
            x(str, bool);
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k n(String str, String... strArr) throws IllegalArgumentException {
            u(str);
            x(str, strArr);
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k o(long j4) throws IllegalArgumentException {
            v(j4);
            x(i.f7108h, Long.valueOf(j4));
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k p(long j4) throws IllegalArgumentException {
            v(j4);
            this.f7071c = j4;
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k q(String str, Integer num) throws IllegalArgumentException {
            u(str);
            x(str, num);
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k r(String str, String str2) throws IllegalArgumentException {
            u(str);
            x(str, str2);
            return this;
        }

        @Override // com.auth0.jwt.interfaces.k
        public k s(String str) throws IllegalArgumentException {
            u(str);
            x(str, b.a());
            return this;
        }

        public f w(com.auth0.jwt.interfaces.b bVar) {
            t();
            return new f(this.f7069a, this.f7070b, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JWTVerifier.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static b f7073a;

        private b() {
        }

        public static b a() {
            if (f7073a == null) {
                f7073a = new b();
            }
            return f7073a;
        }
    }

    f(com.auth0.jwt.algorithms.a aVar, Map<String, Object> map, com.auth0.jwt.interfaces.b bVar) {
        this.f7065a = aVar;
        this.f7066b = Collections.unmodifiableMap(map);
        this.f7067c = bVar;
    }

    private void d(com.auth0.jwt.interfaces.a aVar, String str) {
        if (aVar instanceof com.auth0.jwt.impl.f) {
            throw new InvalidClaimException(String.format("The Claim '%s' is not present in the JWT.", str));
        }
    }

    private void e(Date date, long j4, Date date2) {
        date2.setTime(date2.getTime() - (j4 * 1000));
        if (date != null && date2.after(date)) {
            throw new TokenExpiredException(String.format("The Token has expired on %s.", date));
        }
    }

    private void f(Date date, long j4, Date date2) {
        date2.setTime(date2.getTime() + (j4 * 1000));
        if (date != null && date2.before(date)) {
            throw new InvalidClaimException(String.format("The Token can't be used before %s.", date));
        }
    }

    private void g(List<String> list, List<String> list2) {
        if (list == null || !list.containsAll(list2)) {
            throw new InvalidClaimException("The Claim 'aud' value doesn't contain the required audience.");
        }
    }

    private void h(com.auth0.jwt.interfaces.a aVar, String str, Object obj) {
        boolean z9;
        List emptyList;
        if (obj instanceof String) {
            z9 = obj.equals(aVar.a());
        } else if (obj instanceof Integer) {
            z9 = obj.equals(aVar.f());
        } else if (obj instanceof Long) {
            z9 = obj.equals(aVar.g());
        } else if (obj instanceof Boolean) {
            z9 = obj.equals(aVar.i());
        } else if (obj instanceof Double) {
            z9 = obj.equals(aVar.h());
        } else if (obj instanceof Date) {
            z9 = obj.equals(aVar.b());
        } else if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) aVar.j(Object[].class);
            if (obj instanceof Long[]) {
                emptyList = new ArrayList(objArr.length);
                for (Object obj2 : objArr) {
                    if (obj2 instanceof Integer) {
                        emptyList.add(Long.valueOf(((Integer) obj2).longValue()));
                    } else {
                        emptyList.add(obj2);
                    }
                }
            } else {
                emptyList = aVar.c() ? Collections.emptyList() : Arrays.asList((Object[]) aVar.j(Object[].class));
            }
            z9 = emptyList.containsAll(Arrays.asList((Object[]) obj));
        } else {
            z9 = false;
        }
        if (!z9) {
            throw new InvalidClaimException(String.format("The Claim '%s' value doesn't match the required one.", str));
        }
    }

    private void i(Date date, long j4, boolean z9) {
        Date date2 = new Date(this.f7067c.a().getTime());
        date2.setTime((date2.getTime() / 1000) * 1000);
        if (z9) {
            e(date, j4, date2);
        } else {
            f(date, j4, date2);
        }
    }

    private void j(String str, List<String> list) {
        if (str == null || !list.contains(str)) {
            throw new InvalidClaimException("The Claim 'iss' value doesn't match the required issuer.");
        }
    }

    private void k(String str, String str2, String str3) {
        if (!str3.equals(str2)) {
            throw new InvalidClaimException(String.format("The Claim '%s' value doesn't match the required one.", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k l(com.auth0.jwt.algorithms.a aVar) throws IllegalArgumentException {
        return new a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean m(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return true;
        }
        for (String str : strArr) {
            if (str != null) {
                return false;
            }
        }
        return true;
    }

    private void n(com.auth0.jwt.interfaces.c cVar, com.auth0.jwt.algorithms.a aVar) throws AlgorithmMismatchException {
        if (!aVar.B().equals(cVar.getAlgorithm())) {
            throw new AlgorithmMismatchException("The provided Algorithm doesn't match the one defined in the JWT's Header.");
        }
    }

    private void o(com.auth0.jwt.interfaces.c cVar, Map.Entry<String, Object> entry) {
        String key = entry.getKey();
        key.hashCode();
        char c10 = 65535;
        switch (key.hashCode()) {
            case 96944:
                if (key.equals(i.f7111k)) {
                    c10 = 0;
                    break;
                }
                break;
            case 100893:
                if (key.equals(i.f7107g)) {
                    c10 = 1;
                    break;
                }
                break;
            case 104028:
                if (key.equals(i.f7109i)) {
                    c10 = 2;
                    break;
                }
                break;
            case 104585:
                if (key.equals(i.f7105e)) {
                    c10 = 3;
                    break;
                }
                break;
            case 105567:
                if (key.equals(i.f7110j)) {
                    c10 = 4;
                    break;
                }
                break;
            case 108850:
                if (key.equals(i.f7108h)) {
                    c10 = 5;
                    break;
                }
                break;
            case 114240:
                if (key.equals(i.f7106f)) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                g(cVar.k(), (List) entry.getValue());
                return;
            case 1:
                i(cVar.b(), ((Long) entry.getValue()).longValue(), true);
                return;
            case 2:
                i(cVar.c(), ((Long) entry.getValue()).longValue(), false);
                return;
            case 3:
                j(cVar.getIssuer(), (List) entry.getValue());
                return;
            case 4:
                k(entry.getKey(), cVar.getId(), (String) entry.getValue());
                return;
            case 5:
                i(cVar.getNotBefore(), ((Long) entry.getValue()).longValue(), false);
                return;
            case 6:
                k(entry.getKey(), cVar.a(), (String) entry.getValue());
                return;
            default:
                h(cVar.l(entry.getKey()), entry.getKey(), entry.getValue());
                return;
        }
    }

    private void p(com.auth0.jwt.interfaces.c cVar, Map<String, Object> map) throws TokenExpiredException, InvalidClaimException {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (entry.getValue() instanceof b) {
                d(cVar.l(entry.getKey()), entry.getKey());
            } else {
                o(cVar, entry);
            }
        }
    }

    @Override // com.auth0.jwt.interfaces.g
    public com.auth0.jwt.interfaces.c a(com.auth0.jwt.interfaces.c cVar) throws JWTVerificationException {
        n(cVar, this.f7065a);
        this.f7065a.G(cVar);
        p(cVar, this.f7066b);
        return cVar;
    }

    @Override // com.auth0.jwt.interfaces.g
    public com.auth0.jwt.interfaces.c b(String str) throws JWTVerificationException {
        return a(new e(this.f7068d, str));
    }
}
