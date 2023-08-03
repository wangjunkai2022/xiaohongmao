.class public final Lcom/google/android/play/core/splitinstall/o;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/r1;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/k;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/o;->a:Lcom/google/android/play/core/splitinstall/k;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/o;->a:Lcom/google/android/play/core/splitinstall/k;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/k;->b()Lcom/google/android/play/core/splitinstall/k1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/q1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
