.class public Lorg/aspectj/internal/lang/reflect/r;
.super Lorg/aspectj/internal/lang/reflect/l;
.source "TypePatternBasedPerClauseImpl.java"

# interfaces
.implements Lk8/b0;


# instance fields
.field private b:Lk8/a0;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/aspectj/internal/lang/reflect/l;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;)V

    .line 2
    new-instance p1, Lorg/aspectj/internal/lang/reflect/s;

    invoke-direct {p1, p2}, Lorg/aspectj/internal/lang/reflect/s;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/r;->b:Lk8/a0;

    return-void
.end method


# virtual methods
.method public c()Lk8/a0;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/r;->b:Lk8/a0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pertypewithin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/r;->b:Lk8/a0;

    invoke-interface {v1}, Lk8/a0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
