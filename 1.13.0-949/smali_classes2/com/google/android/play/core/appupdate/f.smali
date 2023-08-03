.class public final Lcom/google/android/play/core/appupdate/f;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final a:Lcom/google/android/play/core/appupdate/f;

.field private final b:Lcom/google/android/play/core/internal/r1;

.field private final c:Lcom/google/android/play/core/internal/r1;

.field private final d:Lcom/google/android/play/core/internal/r1;

.field private final e:Lcom/google/android/play/core/internal/r1;

.field private final f:Lcom/google/android/play/core/internal/r1;

.field private final g:Lcom/google/android/play/core/internal/r1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/appupdate/l;Lcom/google/android/play/core/appupdate/d0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/play/core/appupdate/f;->a:Lcom/google/android/play/core/appupdate/f;

    new-instance p2, Lcom/google/android/play/core/appupdate/n;

    invoke-direct {p2, p1}, Lcom/google/android/play/core/appupdate/n;-><init>(Lcom/google/android/play/core/appupdate/l;)V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/f;->b:Lcom/google/android/play/core/internal/r1;

    new-instance p1, Lcom/google/android/play/core/appupdate/x;

    invoke-direct {p1, p2}, Lcom/google/android/play/core/appupdate/x;-><init>(Lcom/google/android/play/core/internal/r1;)V

    invoke-static {p1}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/f;->c:Lcom/google/android/play/core/internal/r1;

    new-instance v0, Lcom/google/android/play/core/appupdate/v;

    invoke-direct {v0, p2, p1}, Lcom/google/android/play/core/appupdate/v;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/f;->d:Lcom/google/android/play/core/internal/r1;

    new-instance v0, Lcom/google/android/play/core/appupdate/h;

    invoke-direct {v0, p2}, Lcom/google/android/play/core/appupdate/h;-><init>(Lcom/google/android/play/core/internal/r1;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/f;->e:Lcom/google/android/play/core/internal/r1;

    new-instance v1, Lcom/google/android/play/core/appupdate/k;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/play/core/appupdate/k;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/f;->f:Lcom/google/android/play/core/internal/r1;

    new-instance p2, Lcom/google/android/play/core/appupdate/m;

    invoke-direct {p2, p1}, Lcom/google/android/play/core/appupdate/m;-><init>(Lcom/google/android/play/core/internal/r1;)V

    .line 5
    invoke-static {p2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/f;->g:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/appupdate/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/f;->g:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/appupdate/b;

    return-object v0
.end method
