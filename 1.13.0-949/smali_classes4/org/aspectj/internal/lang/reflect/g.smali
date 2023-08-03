.class public Lorg/aspectj/internal/lang/reflect/g;
.super Ljava/lang/Object;
.source "DeclareSoftImpl.java"

# interfaces
.implements Lk8/k;


# instance fields
.field private a:Lk8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk8/c<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Lk8/x;

.field private c:Lk8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk8/c<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lk8/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk8/c<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/g;->a:Lk8/c;

    .line 3
    new-instance v0, Lorg/aspectj/internal/lang/reflect/n;

    invoke-direct {v0, p2}, Lorg/aspectj/internal/lang/reflect/n;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/g;->b:Lk8/x;

    .line 4
    :try_start_0
    invoke-interface {p1}, Lk8/c;->Z()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-static {p3, p2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lk8/d;->a(Ljava/lang/Class;)Lk8/c;

    move-result-object p1

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/g;->c:Lk8/c;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iput-object p3, p0, Lorg/aspectj/internal/lang/reflect/g;->d:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lk8/c;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/g;->a:Lk8/c;

    return-object v0
.end method

.method public b()Lk8/x;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/g;->b:Lk8/x;

    return-object v0
.end method

.method public c()Lk8/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/g;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/g;->c:Lk8/c;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/g;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "declare soft : "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/g;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/g;->c:Lk8/c;

    invoke-interface {v1}, Lk8/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, " : "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/g;->b()Lk8/x;

    move-result-object v1

    invoke-interface {v1}, Lk8/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
