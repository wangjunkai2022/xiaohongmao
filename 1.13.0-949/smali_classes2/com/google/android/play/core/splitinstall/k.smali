.class public final Lcom/google/android/play/core/splitinstall/k;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/k;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k;->a:Landroid/content/Context;

    return-object v0
.end method

.method final b()Lcom/google/android/play/core/splitinstall/k1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/k1;->j(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/k1;

    move-result-object v0

    return-object v0
.end method
