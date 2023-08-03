.class public final Lcom/google/android/play/core/splitinstall/p;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/r1;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/k;

.field private final b:Lcom/google/android/play/core/internal/r1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/k;Lcom/google/android/play/core/internal/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/p;->a:Lcom/google/android/play/core/splitinstall/k;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/p;->b:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/p;->b:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/play/core/splitinstall/z0;

    invoke-static {v0}, Lcom/google/android/play/core/internal/q1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
