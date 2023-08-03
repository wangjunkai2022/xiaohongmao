.class public Lorg/aspectj/internal/lang/reflect/d;
.super Ljava/lang/Object;
.source "DeclareErrorOrWarningImpl.java"

# interfaces
.implements Lk8/h;


# instance fields
.field private a:Lk8/x;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lk8/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLk8/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/aspectj/internal/lang/reflect/n;

    invoke-direct {v0, p1}, Lorg/aspectj/internal/lang/reflect/n;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/d;->a:Lk8/x;

    .line 3
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/d;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lorg/aspectj/internal/lang/reflect/d;->c:Z

    .line 5
    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/d;->d:Lk8/c;

    return-void
.end method


# virtual methods
.method public a()Lk8/c;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/d;->d:Lk8/c;

    return-object v0
.end method

.method public b()Lk8/x;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/d;->a:Lk8/x;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/d;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "declare "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/d;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "error : "

    goto :goto_0

    :cond_0
    const-string v1, "warning : "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/d;->b()Lk8/x;

    move-result-object v1

    invoke-interface {v1}, Lk8/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " : "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
