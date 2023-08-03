.class public final Lcom/google/android/play/core/splitinstall/s0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/c1;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/s0;

.field private final b:Lcom/google/android/play/core/internal/r1;

.field private final c:Lcom/google/android/play/core/internal/r1;

.field private final d:Lcom/google/android/play/core/internal/r1;

.field private final e:Lcom/google/android/play/core/internal/r1;

.field private final f:Lcom/google/android/play/core/internal/r1;

.field private final g:Lcom/google/android/play/core/internal/r1;

.field private final h:Lcom/google/android/play/core/internal/r1;

.field private final i:Lcom/google/android/play/core/internal/r1;

.field private final j:Lcom/google/android/play/core/internal/r1;

.field private final k:Lcom/google/android/play/core/internal/r1;

.field private final l:Lcom/google/android/play/core/internal/r1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/k;Lcom/google/android/play/core/splitinstall/r0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/play/core/splitinstall/s0;->a:Lcom/google/android/play/core/splitinstall/s0;

    new-instance p2, Lcom/google/android/play/core/splitinstall/l;

    invoke-direct {p2, p1}, Lcom/google/android/play/core/splitinstall/l;-><init>(Lcom/google/android/play/core/splitinstall/k;)V

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/s0;->b:Lcom/google/android/play/core/internal/r1;

    new-instance v0, Lcom/google/android/play/core/splitinstall/m0;

    invoke-direct {v0, p2}, Lcom/google/android/play/core/splitinstall/m0;-><init>(Lcom/google/android/play/core/internal/r1;)V

    invoke-static {v0}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/s0;->c:Lcom/google/android/play/core/internal/r1;

    new-instance v1, Lcom/google/android/play/core/splitinstall/o;

    invoke-direct {v1, p1}, Lcom/google/android/play/core/splitinstall/o;-><init>(Lcom/google/android/play/core/splitinstall/k;)V

    .line 2
    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/core/splitinstall/s0;->d:Lcom/google/android/play/core/internal/r1;

    new-instance v2, Lcom/google/android/play/core/splitinstall/g1;

    invoke-direct {v2, p2}, Lcom/google/android/play/core/splitinstall/g1;-><init>(Lcom/google/android/play/core/internal/r1;)V

    .line 3
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/play/core/splitinstall/s0;->e:Lcom/google/android/play/core/internal/r1;

    new-instance v3, Lcom/google/android/play/core/splitinstall/o0;

    invoke-direct {v3, p2}, Lcom/google/android/play/core/splitinstall/o0;-><init>(Lcom/google/android/play/core/internal/r1;)V

    .line 4
    invoke-static {v3}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/play/core/splitinstall/s0;->f:Lcom/google/android/play/core/internal/r1;

    new-instance v4, Lcom/google/android/play/core/splitinstall/j;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/splitinstall/j;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 5
    invoke-static {v4}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/s0;->g:Lcom/google/android/play/core/internal/r1;

    new-instance v1, Lcom/google/android/play/core/splitinstall/n;

    invoke-direct {v1, p2}, Lcom/google/android/play/core/splitinstall/n;-><init>(Lcom/google/android/play/core/internal/r1;)V

    .line 6
    invoke-static {v1}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/core/splitinstall/s0;->h:Lcom/google/android/play/core/internal/r1;

    new-instance v3, Lcom/google/android/play/core/splitinstall/m;

    invoke-direct {v3, v1}, Lcom/google/android/play/core/splitinstall/m;-><init>(Lcom/google/android/play/core/internal/r1;)V

    iput-object v3, p0, Lcom/google/android/play/core/splitinstall/s0;->i:Lcom/google/android/play/core/internal/r1;

    new-instance v4, Lcom/google/android/play/core/splitinstall/testing/t;

    invoke-direct {v4, p2, v1, v2, v3}, Lcom/google/android/play/core/splitinstall/testing/t;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 7
    invoke-static {v4}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/s0;->j:Lcom/google/android/play/core/internal/r1;

    new-instance v2, Lcom/google/android/play/core/splitinstall/a1;

    invoke-direct {v2, v0, p2, v1}, Lcom/google/android/play/core/splitinstall/a1;-><init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V

    .line 8
    invoke-static {v2}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/s0;->k:Lcom/google/android/play/core/internal/r1;

    new-instance v0, Lcom/google/android/play/core/splitinstall/p;

    invoke-direct {v0, p1, p2}, Lcom/google/android/play/core/splitinstall/p;-><init>(Lcom/google/android/play/core/splitinstall/k;Lcom/google/android/play/core/internal/r1;)V

    .line 9
    invoke-static {v0}, Lcom/google/android/play/core/internal/p1;->b(Lcom/google/android/play/core/internal/r1;)Lcom/google/android/play/core/internal/r1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/s0;->l:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/play/core/splitinstall/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/s0;->l:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/c;

    return-object v0
.end method

.method public final zzb()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/s0;->h:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method
