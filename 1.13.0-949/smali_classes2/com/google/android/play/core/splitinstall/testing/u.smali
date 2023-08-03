.class abstract Lcom/google/android/play/core/splitinstall/testing/u;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(I)Lcom/google/android/play/core/splitinstall/testing/u;
    .param p1    # I
        .annotation build Lg3/a;
        .end annotation
    .end param
.end method

.method abstract b(Ljava/util/Map;)Lcom/google/android/play/core/splitinstall/testing/u;
.end method

.method abstract c()Lcom/google/android/play/core/splitinstall/testing/v;
.end method

.method abstract d()Ljava/util/Map;
.end method

.method final e()Lcom/google/android/play/core/splitinstall/testing/v;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/testing/u;->d()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/splitinstall/testing/u;->b(Ljava/util/Map;)Lcom/google/android/play/core/splitinstall/testing/u;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/testing/u;->c()Lcom/google/android/play/core/splitinstall/testing/v;

    move-result-object v0

    return-object v0
.end method
