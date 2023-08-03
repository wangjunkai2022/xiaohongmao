.class public final Lcom/google/common/cache/a$a;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Lcom/google/common/cache/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/common/cache/k;

.field private final b:Lcom/google/common/cache/k;

.field private final c:Lcom/google/common/cache/k;

.field private final d:Lcom/google/common/cache/k;

.field private final e:Lcom/google/common/cache/k;

.field private final f:Lcom/google/common/cache/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/cache/l;->a()Lcom/google/common/cache/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a$a;->a:Lcom/google/common/cache/k;

    .line 3
    invoke-static {}, Lcom/google/common/cache/l;->a()Lcom/google/common/cache/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a$a;->b:Lcom/google/common/cache/k;

    .line 4
    invoke-static {}, Lcom/google/common/cache/l;->a()Lcom/google/common/cache/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a$a;->c:Lcom/google/common/cache/k;

    .line 5
    invoke-static {}, Lcom/google/common/cache/l;->a()Lcom/google/common/cache/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a$a;->d:Lcom/google/common/cache/k;

    .line 6
    invoke-static {}, Lcom/google/common/cache/l;->a()Lcom/google/common/cache/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a$a;->e:Lcom/google/common/cache/k;

    .line 7
    invoke-static {}, Lcom/google/common/cache/l;->a()Lcom/google/common/cache/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/a$a;->f:Lcom/google/common/cache/k;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/cache/a$a;->a:Lcom/google/common/cache/k;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/k;->a(J)V

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/cache/a$a;->b:Lcom/google/common/cache/k;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/k;->a(J)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/a$a;->f:Lcom/google/common/cache/k;

    invoke-interface {v0}, Lcom/google/common/cache/k;->b()V

    return-void
.end method

.method public d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/a$a;->d:Lcom/google/common/cache/k;

    invoke-interface {v0}, Lcom/google/common/cache/k;->b()V

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/a$a;->e:Lcom/google/common/cache/k;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/k;->a(J)V

    return-void
.end method

.method public e(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/a$a;->c:Lcom/google/common/cache/k;

    invoke-interface {v0}, Lcom/google/common/cache/k;->b()V

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/a$a;->e:Lcom/google/common/cache/k;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/k;->a(J)V

    return-void
.end method

.method public f()Lcom/google/common/cache/f;
    .locals 14

    .line 1
    new-instance v13, Lcom/google/common/cache/f;

    iget-object v0, p0, Lcom/google/common/cache/a$a;->a:Lcom/google/common/cache/k;

    .line 2
    invoke-interface {v0}, Lcom/google/common/cache/k;->c()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/common/cache/a$a;->b:Lcom/google/common/cache/k;

    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/k;->c()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/common/cache/a$a;->c:Lcom/google/common/cache/k;

    .line 4
    invoke-interface {v0}, Lcom/google/common/cache/k;->c()J

    move-result-wide v5

    iget-object v0, p0, Lcom/google/common/cache/a$a;->d:Lcom/google/common/cache/k;

    .line 5
    invoke-interface {v0}, Lcom/google/common/cache/k;->c()J

    move-result-wide v7

    iget-object v0, p0, Lcom/google/common/cache/a$a;->e:Lcom/google/common/cache/k;

    .line 6
    invoke-interface {v0}, Lcom/google/common/cache/k;->c()J

    move-result-wide v9

    iget-object v0, p0, Lcom/google/common/cache/a$a;->f:Lcom/google/common/cache/k;

    .line 7
    invoke-interface {v0}, Lcom/google/common/cache/k;->c()J

    move-result-wide v11

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/common/cache/f;-><init>(JJJJJJ)V

    return-object v13
.end method

.method public g(Lcom/google/common/cache/a$b;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/a$b;->f()Lcom/google/common/cache/f;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/a$a;->a:Lcom/google/common/cache/k;

    invoke-virtual {p1}, Lcom/google/common/cache/f;->c()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/k;->a(J)V

    .line 3
    iget-object v0, p0, Lcom/google/common/cache/a$a;->b:Lcom/google/common/cache/k;

    invoke-virtual {p1}, Lcom/google/common/cache/f;->j()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/k;->a(J)V

    .line 4
    iget-object v0, p0, Lcom/google/common/cache/a$a;->c:Lcom/google/common/cache/k;

    invoke-virtual {p1}, Lcom/google/common/cache/f;->h()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/k;->a(J)V

    .line 5
    iget-object v0, p0, Lcom/google/common/cache/a$a;->d:Lcom/google/common/cache/k;

    invoke-virtual {p1}, Lcom/google/common/cache/f;->f()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/k;->a(J)V

    .line 6
    iget-object v0, p0, Lcom/google/common/cache/a$a;->e:Lcom/google/common/cache/k;

    invoke-virtual {p1}, Lcom/google/common/cache/f;->n()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/k;->a(J)V

    .line 7
    iget-object v0, p0, Lcom/google/common/cache/a$a;->f:Lcom/google/common/cache/k;

    invoke-virtual {p1}, Lcom/google/common/cache/f;->b()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/k;->a(J)V

    return-void
.end method
