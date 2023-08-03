.class public final Lcom/google/android/gms/internal/mlkit_common/sb;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/jb;


# instance fields
.field private a:Lo3/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lo3/b;

.field private final c:Lcom/google/android/gms/internal/mlkit_common/db;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/db;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/sb;->c:Lcom/google/android/gms/internal/mlkit_common/db;

    sget-object p2, Lcom/google/android/datatransport/cct/a;->j:Lcom/google/android/datatransport/cct/a;

    .line 2
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/t;->f(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/t;->c()Lcom/google/android/datatransport/runtime/t;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/datatransport/runtime/t;->g(Lcom/google/android/datatransport/runtime/f;)Lcom/google/android/datatransport/h;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/google/android/datatransport/cct/a;->a()Ljava/util/Set;

    move-result-object p2

    const-string v0, "json"

    invoke-static {v0}, Lcom/google/android/datatransport/c;->b(Ljava/lang/String;)Lcom/google/android/datatransport/c;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/firebase/components/w;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/pb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/pb;-><init>(Lcom/google/android/datatransport/h;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/w;-><init>(Lo3/b;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/sb;->a:Lo3/b;

    .line 6
    :cond_0
    new-instance p2, Lcom/google/firebase/components/w;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/qb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/qb;-><init>(Lcom/google/android/datatransport/h;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/w;-><init>(Lo3/b;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/sb;->b:Lo3/b;

    return-void
.end method

.method static b(Lcom/google/android/gms/internal/mlkit_common/db;Lcom/google/android/gms/internal/mlkit_common/ab;)Lcom/google/android/datatransport/d;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/db;->a()I

    move-result p0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_common/ab;->a(IZ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/datatransport/d;->g(Ljava/lang/Object;)Lcom/google/android/datatransport/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mlkit_common/ab;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/sb;->c:Lcom/google/android/gms/internal/mlkit_common/db;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/db;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/sb;->a:Lo3/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lo3/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/g;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/sb;->c:Lcom/google/android/gms/internal/mlkit_common/db;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/mlkit_common/sb;->b(Lcom/google/android/gms/internal/mlkit_common/db;Lcom/google/android/gms/internal/mlkit_common/ab;)Lcom/google/android/datatransport/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/g;->b(Lcom/google/android/datatransport/d;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/sb;->b:Lo3/b;

    .line 3
    invoke-interface {v0}, Lo3/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/g;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/sb;->c:Lcom/google/android/gms/internal/mlkit_common/db;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/mlkit_common/sb;->b(Lcom/google/android/gms/internal/mlkit_common/db;Lcom/google/android/gms/internal/mlkit_common/ab;)Lcom/google/android/datatransport/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/g;->b(Lcom/google/android/datatransport/d;)V

    return-void
.end method
