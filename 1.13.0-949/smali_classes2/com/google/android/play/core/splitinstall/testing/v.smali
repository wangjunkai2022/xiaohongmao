.class public abstract Lcom/google/android/play/core/splitinstall/testing/v;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field public static final a:Lcom/google/android/play/core/splitinstall/testing/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/play/core/splitinstall/testing/v;->c()Lcom/google/android/play/core/splitinstall/testing/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/testing/u;->e()Lcom/google/android/play/core/splitinstall/testing/v;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/splitinstall/testing/v;->a:Lcom/google/android/play/core/splitinstall/testing/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lcom/google/android/play/core/splitinstall/testing/u;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/c;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/testing/c;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/splitinstall/testing/c;->b(Ljava/util/Map;)Lcom/google/android/play/core/splitinstall/testing/u;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lg3/a;
    .end annotation
.end method

.method public abstract b()Ljava/util/Map;
.end method
