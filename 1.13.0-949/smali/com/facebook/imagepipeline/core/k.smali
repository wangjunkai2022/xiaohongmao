.class public Lcom/facebook/imagepipeline/core/k;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/k$c;,
        Lcom/facebook/imagepipeline/core/k$d;,
        Lcom/facebook/imagepipeline/core/k$b;
    }
.end annotation


# instance fields
.field private final A:I

.field private final B:Z

.field private final C:Z

.field private final D:Z

.field private final E:Z

.field private final a:Z

.field private final b:Lt0/b$a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final c:Z

.field private final d:Lt0/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final e:Z

.field private final f:Z

.field private final g:I

.field private final h:I

.field private i:Z

.field private final j:I

.field private final k:Z

.field private final l:Z

.field private final m:Lcom/facebook/imagepipeline/core/k$d;

.field private final n:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final o:Z

.field private final p:Z

.field private final q:I

.field private final r:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Z

.field private final t:J

.field private u:Z

.field private v:Z

.field private w:Z

.field private final x:Z

.field private final y:Z

.field private final z:Z


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/core/k$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->a(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->a:Z

    .line 4
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->b(Lcom/facebook/imagepipeline/core/k$b;)Lt0/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lt0/b$a;

    .line 5
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->l(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->c:Z

    .line 6
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->m(Lcom/facebook/imagepipeline/core/k$b;)Lt0/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->d:Lt0/b;

    .line 7
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->n(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->e:Z

    .line 8
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->o(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->f:Z

    .line 9
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->p(Lcom/facebook/imagepipeline/core/k$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/k;->g:I

    .line 10
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->q(Lcom/facebook/imagepipeline/core/k$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/k;->h:I

    .line 11
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/k$b;->j:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->i:Z

    .line 12
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->r(Lcom/facebook/imagepipeline/core/k$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/k;->j:I

    .line 13
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->s(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->k:Z

    .line 14
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->c(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->l:Z

    .line 15
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->d(Lcom/facebook/imagepipeline/core/k$b;)Lcom/facebook/imagepipeline/core/k$d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/facebook/imagepipeline/core/k$c;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/core/k$c;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->m:Lcom/facebook/imagepipeline/core/k$d;

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->d(Lcom/facebook/imagepipeline/core/k$b;)Lcom/facebook/imagepipeline/core/k$d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->m:Lcom/facebook/imagepipeline/core/k$d;

    .line 18
    :goto_0
    iget-object v0, p1, Lcom/facebook/imagepipeline/core/k$b;->o:Lcom/facebook/common/internal/m;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->n:Lcom/facebook/common/internal/m;

    .line 19
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/k$b;->p:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->o:Z

    .line 20
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/k$b;->q:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->p:Z

    .line 21
    iget v0, p1, Lcom/facebook/imagepipeline/core/k$b;->r:I

    iput v0, p0, Lcom/facebook/imagepipeline/core/k;->q:I

    .line 22
    iget-object v0, p1, Lcom/facebook/imagepipeline/core/k$b;->s:Lcom/facebook/common/internal/m;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->r:Lcom/facebook/common/internal/m;

    .line 23
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/k$b;->t:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->s:Z

    .line 24
    iget-wide v0, p1, Lcom/facebook/imagepipeline/core/k$b;->u:J

    iput-wide v0, p0, Lcom/facebook/imagepipeline/core/k;->t:J

    .line 25
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->e(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->u:Z

    .line 26
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/k$b;->w:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->v:Z

    .line 27
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/k$b;->x:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->w:Z

    .line 28
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/k$b;->y:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->x:Z

    .line 29
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->f(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->y:Z

    .line 30
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->g(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->z:Z

    .line 31
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->h(Lcom/facebook/imagepipeline/core/k$b;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/k;->A:I

    .line 32
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->i(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->B:Z

    .line 33
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->j(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->C:Z

    .line 34
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k$b;->k(Lcom/facebook/imagepipeline/core/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->D:Z

    .line 35
    iget-boolean p1, p1, Lcom/facebook/imagepipeline/core/k$b;->F:Z

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k;->E:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/k$b;Lcom/facebook/imagepipeline/core/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/k;-><init>(Lcom/facebook/imagepipeline/core/k$b;)V

    return-void
.end method

.method public static A(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/core/k$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configBuilder"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/core/k$b;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/core/k$b;-><init>(Lcom/facebook/imagepipeline/core/i$b;)V

    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->v:Z

    return v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->p:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->E:Z

    return v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->u:Z

    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->D:Z

    return v0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->B:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/core/k;->q:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->i:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/core/k;->h:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/core/k;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/core/k;->j:I

    return v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/imagepipeline/core/k;->t:J

    return-wide v0
.end method

.method public h()Lcom/facebook/imagepipeline/core/k$d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->m:Lcom/facebook/imagepipeline/core/k$d;

    return-object v0
.end method

.method public i()Lcom/facebook/common/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->r:Lcom/facebook/common/internal/m;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/core/k;->A:I

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->f:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->e:Z

    return v0
.end method

.method public m()Lt0/b;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->d:Lt0/b;

    return-object v0
.end method

.method public n()Lt0/b$a;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lt0/b$a;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->C:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->c:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->z:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->w:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->y:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->x:Z

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->s:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->o:Z

    return v0
.end method

.method public w()Lcom/facebook/common/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->n:Lcom/facebook/common/internal/m;

    return-object v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->k:Z

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->l:Z

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k;->a:Z

    return v0
.end method
