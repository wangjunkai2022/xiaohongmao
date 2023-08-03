.class public final Lcom/google/android/play/core/splitinstall/d;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/c;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/h1;->a(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/c1;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/play/core/splitinstall/c1;->zza()Lcom/google/android/play/core/splitinstall/c;

    move-result-object p0

    return-object p0
.end method
