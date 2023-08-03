.class public final Lcom/fasterxml/jackson/databind/introspect/s$g;
.super Ljava/lang/Object;
.source "POJOPropertyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/fasterxml/jackson/databind/introspect/s$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/fasterxml/jackson/databind/PropertyName;

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "ZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz p4, :cond_3

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p4, 0x0

    goto :goto_2

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass true for \'explName\' if name is null/empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_2
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->d:Z

    .line 8
    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->e:Z

    .line 9
    iput-boolean p6, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->f:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/s$g;->a(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->b()Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    return-object v0

    .line 7
    :cond_2
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v1, :cond_3

    return-object v0

    .line 8
    :cond_3
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->e:Z

    iget-boolean v3, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->e:Z

    if-ne v1, v3, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->d:Z

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->e:Z

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->f:Z

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/introspect/s$g;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->d:Z

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->e:Z

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->f:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/introspect/s$g;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    return-object v0
.end method

.method public e()Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->f:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->e()Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->e()Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    return-object v0

    :cond_2
    return-object p0
.end method

.method public f()Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->d:Z

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->e:Z

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->f:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/introspect/s$g;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    return-object v0
.end method

.method public g()Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->g()Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s[visible=%b,ignore=%b,explicitName=%b]"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
