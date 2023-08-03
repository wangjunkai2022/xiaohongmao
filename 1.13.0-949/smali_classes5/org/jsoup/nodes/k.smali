.class public abstract Lorg/jsoup/nodes/k;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/k$a;
    }
.end annotation


# static fields
.field static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/lang/String; = ""


# instance fields
.field a:Lorg/jsoup/nodes/k;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/k;->c:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private R(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->o()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/k;

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/k;->b0(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->O()Lorg/jsoup/nodes/k;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->O()Lorg/jsoup/nodes/k;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p0}, Lorg/jsoup/nodes/l;->b(Lorg/jsoup/nodes/k;)Lorg/jsoup/parser/f;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Lorg/jsoup/parser/f;->k(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/jsoup/nodes/k;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/jsoup/nodes/k;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/k;->b(I[Lorg/jsoup/nodes/k;)V

    return-void
.end method

.method private z(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->C0()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/k;->z(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public A(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "abs:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->i()Lorg/jsoup/nodes/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/b;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->t(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract B()Z
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->J()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/jsoup/nodes/k;

    invoke-virtual {p1}, Lorg/jsoup/nodes/k;->J()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public E(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/k;->K(Ljava/lang/Appendable;)V

    return-object p1
.end method

.method protected F(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->h()I

    move-result p3

    mul-int p2, p2, p3

    invoke-static {p2}, Lorg/jsoup/internal/f;->o(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public G()Lorg/jsoup/nodes/k;
    .locals 4
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v0

    .line 3
    iget v2, p0, Lorg/jsoup/nodes/k;->b:I

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/k;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public abstract H()Ljava/lang/String;
.end method

.method I()V
    .locals 0

    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/jsoup/internal/f;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/k;->K(Ljava/lang/Appendable;)V

    .line 3
    invoke-static {v0}, Lorg/jsoup/internal/f;->p(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected K(Ljava/lang/Appendable;)V
    .locals 2

    new-instance v0, Lorg/jsoup/nodes/k$a;

    invoke-static {p0}, Lorg/jsoup/nodes/l;->a(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/k$a;-><init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/d;->c(Lorg/jsoup/select/e;Lorg/jsoup/nodes/k;)V

    return-void
.end method

.method abstract L(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract M(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public N()Lorg/jsoup/nodes/Document;
    .locals 2
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->Y()Lorg/jsoup/nodes/k;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/jsoup/nodes/Document;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jsoup/nodes/Document;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public O()Lorg/jsoup/nodes/k;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    return-object v0
.end method

.method public final P()Lorg/jsoup/nodes/k;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    return-object v0
.end method

.method public Q()Lorg/jsoup/nodes/k;
    .locals 3
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v2, p0, Lorg/jsoup/nodes/k;->b:I

    if-lez v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/nodes/k;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/k;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/k;->U(Lorg/jsoup/nodes/k;)V

    return-void
.end method

.method public T(Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->K(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method protected U(Lorg/jsoup/nodes/k;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->d(Z)V

    .line 2
    iget v0, p1, Lorg/jsoup/nodes/k;->b:I

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/k;->R(I)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    return-void
.end method

.method protected V(Lorg/jsoup/nodes/k;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/k;->a0(Lorg/jsoup/nodes/k;)V

    return-void
.end method

.method protected W(Lorg/jsoup/nodes/k;Lorg/jsoup/nodes/k;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->d(Z)V

    .line 2
    invoke-static {p2}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p2, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/k;->U(Lorg/jsoup/nodes/k;)V

    .line 5
    :cond_1
    iget v0, p1, Lorg/jsoup/nodes/k;->b:I

    .line 6
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p0, p2, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    .line 8
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/k;->b0(I)V

    const/4 p2, 0x0

    .line 9
    iput-object p2, p1, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    return-void
.end method

.method public X(Lorg/jsoup/nodes/k;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    invoke-virtual {v0, p0, p1}, Lorg/jsoup/nodes/k;->W(Lorg/jsoup/nodes/k;Lorg/jsoup/nodes/k;)V

    return-void
.end method

.method public Y()Lorg/jsoup/nodes/k;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public Z(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/k;->v(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->i()Lorg/jsoup/nodes/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jsoup/internal/f;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method protected a0(Lorg/jsoup/nodes/k;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/k;->U(Lorg/jsoup/nodes/k;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    return-void
.end method

.method protected varargs b(I[Lorg/jsoup/nodes/k;)V
    .locals 8

    .line 1
    invoke-static {p2}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    array-length v0, p2

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/jsoup/nodes/k;->O()Lorg/jsoup/nodes/k;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 5
    invoke-virtual {v2}, Lorg/jsoup/nodes/k;->o()I

    move-result v3

    array-length v4, p2

    if-ne v3, v4, :cond_7

    .line 6
    invoke-virtual {v2}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v3

    .line 7
    array-length v4, p2

    :goto_0
    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x1

    if-lez v4, :cond_2

    .line 8
    aget-object v4, p2, v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v4, v7, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_7

    .line 9
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->o()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 10
    :goto_2
    invoke-virtual {v2}, Lorg/jsoup/nodes/k;->w()Lorg/jsoup/nodes/k;

    .line 11
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 12
    array-length v0, p2

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_4

    .line 13
    aget-object v0, p2, v2

    iput-object p0, v0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    move v0, v2

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    .line 14
    aget-object p2, p2, v1

    iget p2, p2, Lorg/jsoup/nodes/k;->b:I

    if-eqz p2, :cond_6

    .line 15
    :cond_5
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/k;->R(I)V

    :cond_6
    return-void

    .line 16
    :cond_7
    invoke-static {p2}, Lorg/jsoup/helper/d;->f([Ljava/lang/Object;)V

    .line 17
    array-length v2, p2

    :goto_4
    if-ge v1, v2, :cond_8

    aget-object v3, p2, v1

    .line 18
    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/k;->V(Lorg/jsoup/nodes/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 19
    :cond_8
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 20
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/k;->R(I)V

    return-void
.end method

.method protected b0(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/nodes/k;->b:I

    return-void
.end method

.method protected varargs c([Lorg/jsoup/nodes/k;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/k;->V(Lorg/jsoup/nodes/k;)V

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/k;->b0(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c0()Lorg/jsoup/nodes/k;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/k;->u(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->t()Lorg/jsoup/nodes/k;

    move-result-object v0

    return-object v0
.end method

.method public d0()I
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/k;->b:I

    return v0
.end method

.method public e(Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/k;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/k;->d(ILjava/lang/String;)V

    return-object p0
.end method

.method public e0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/k;

    if-eq v2, p0, :cond_1

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    iget v1, p0, Lorg/jsoup/nodes/k;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v2, v2, [Lorg/jsoup/nodes/k;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/k;->b(I[Lorg/jsoup/nodes/k;)V

    return-object p0
.end method

.method public f0(Lorg/jsoup/select/e;)Lorg/jsoup/nodes/k;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1, p0}, Lorg/jsoup/select/d;->c(Lorg/jsoup/select/e;Lorg/jsoup/nodes/k;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->B()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "abs:"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public g0()Lorg/jsoup/nodes/k;
    .locals 4
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/k;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    iget v2, p0, Lorg/jsoup/nodes/k;->b:I

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->q()[Lorg/jsoup/nodes/k;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/nodes/k;->b(I[Lorg/jsoup/nodes/k;)V

    .line 5
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->S()V

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/jsoup/nodes/l;->b(Lorg/jsoup/nodes/k;)Lorg/jsoup/parser/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/f;->q()Lorg/jsoup/parser/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/b;->H(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public h0(Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/jsoup/nodes/g;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jsoup/nodes/g;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Lorg/jsoup/nodes/g;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/jsoup/nodes/g;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p0}, Lorg/jsoup/nodes/l;->b(Lorg/jsoup/nodes/k;)Lorg/jsoup/parser/f;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/jsoup/parser/f;->k(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/k;

    .line 6
    instance-of v2, v1, Lorg/jsoup/nodes/g;

    if-nez v2, :cond_2

    return-object p0

    .line 7
    :cond_2
    check-cast v1, Lorg/jsoup/nodes/g;

    .line 8
    invoke-direct {p0, v1}, Lorg/jsoup/nodes/k;->z(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3, p0, v1}, Lorg/jsoup/nodes/k;->W(Lorg/jsoup/nodes/k;Lorg/jsoup/nodes/k;)V

    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/jsoup/nodes/k;

    aput-object p0, v3, v0

    .line 11
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/k;->c([Lorg/jsoup/nodes/k;)V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 13
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/k;

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    iget-object v3, v2, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {v3, v2}, Lorg/jsoup/nodes/k;->U(Lorg/jsoup/nodes/k;)V

    .line 17
    :cond_5
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/g;->n0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract i()Lorg/jsoup/nodes/b;
.end method

.method public j()I
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public l(Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/k;->b:I

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/k;->d(ILjava/lang/String;)V

    return-object p0
.end method

.method public m(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    iget v1, p0, Lorg/jsoup/nodes/k;->b:I

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jsoup/nodes/k;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/k;->b(I[Lorg/jsoup/nodes/k;)V

    return-object p0
.end method

.method public n(I)Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/k;

    return-object p1
.end method

.method public abstract o()I
.end method

.method public p()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->o()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lorg/jsoup/nodes/k;->c:Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected q()[Lorg/jsoup/nodes/k;
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/jsoup/nodes/k;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/k;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/k;

    .line 4
    invoke-virtual {v2}, Lorg/jsoup/nodes/k;->t()Lorg/jsoup/nodes/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public s()Lorg/jsoup/nodes/k;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public t()Lorg/jsoup/nodes/k;
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/k;->u(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/k;

    .line 6
    invoke-virtual {v2}, Lorg/jsoup/nodes/k;->o()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lorg/jsoup/nodes/k;->x()Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/k;

    invoke-virtual {v6, v2}, Lorg/jsoup/nodes/k;->u(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;

    move-result-object v6

    .line 9
    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;
    .locals 1
    .param p1    # Lorg/jsoup/nodes/k;
        .annotation runtime Lr7/h;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/k;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iput-object p1, v0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lorg/jsoup/nodes/k;->b:I

    :goto_0
    iput p1, v0, Lorg/jsoup/nodes/k;->b:I

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected abstract v(Ljava/lang/String;)V
.end method

.method public abstract w()Lorg/jsoup/nodes/k;
.end method

.method protected abstract x()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation
.end method

.method public y(Lorg/jsoup/select/NodeFilter;)Lorg/jsoup/nodes/k;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1, p0}, Lorg/jsoup/select/d;->a(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/k;)Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p0
.end method
