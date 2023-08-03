package com.google.common.cache;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@h3.b
/* loaded from: classes2.dex */
public abstract class RemovalCause {
    public static final RemovalCause COLLECTED;
    public static final RemovalCause EXPIRED;
    public static final RemovalCause EXPLICIT;
    public static final RemovalCause REPLACED;
    public static final RemovalCause SIZE;

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ RemovalCause[] f32338a;

    /* loaded from: classes2.dex */
    enum a extends RemovalCause {
        a(String str, int i4) {
            super(str, i4, null);
        }

        @Override // com.google.common.cache.RemovalCause
        boolean a() {
            return false;
        }
    }

    static {
        a aVar = new a("EXPLICIT", 0);
        EXPLICIT = aVar;
        RemovalCause removalCause = new RemovalCause("REPLACED", 1) { // from class: com.google.common.cache.RemovalCause.b
            @Override // com.google.common.cache.RemovalCause
            boolean a() {
                return false;
            }
        };
        REPLACED = removalCause;
        RemovalCause removalCause2 = new RemovalCause("COLLECTED", 2) { // from class: com.google.common.cache.RemovalCause.c
            @Override // com.google.common.cache.RemovalCause
            boolean a() {
                return true;
            }
        };
        COLLECTED = removalCause2;
        RemovalCause removalCause3 = new RemovalCause("EXPIRED", 3) { // from class: com.google.common.cache.RemovalCause.d
            @Override // com.google.common.cache.RemovalCause
            boolean a() {
                return true;
            }
        };
        EXPIRED = removalCause3;
        RemovalCause removalCause4 = new RemovalCause("SIZE", 4) { // from class: com.google.common.cache.RemovalCause.e
            @Override // com.google.common.cache.RemovalCause
            boolean a() {
                return true;
            }
        };
        SIZE = removalCause4;
        f32338a = new RemovalCause[]{aVar, removalCause, removalCause2, removalCause3, removalCause4};
    }

    private RemovalCause(String str, int i4) {
    }

    public static RemovalCause valueOf(String str) {
        return (RemovalCause) Enum.valueOf(RemovalCause.class, str);
    }

    public static RemovalCause[] values() {
        return (RemovalCause[]) f32338a.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a();

    /* synthetic */ RemovalCause(String str, int i4, a aVar) {
        this(str, i4);
    }
}
