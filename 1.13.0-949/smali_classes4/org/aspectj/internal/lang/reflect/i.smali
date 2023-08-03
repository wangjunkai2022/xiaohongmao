.class public Lorg/aspectj/internal/lang/reflect/i;
.super Ljava/lang/Object;
.source "InterTypeDeclarationImpl.java"

# interfaces
.implements Lk8/o;


# instance fields
.field private a:Lk8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk8/c<",
            "*>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field private c:Lk8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk8/c<",
            "*>;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Lk8/c;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk8/c<",
            "*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/i;->a:Lk8/c;

    .line 3
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/i;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lorg/aspectj/internal/lang/reflect/i;->d:I

    .line 5
    :try_start_0
    invoke-interface {p1}, Lk8/c;->Z()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/aspectj/internal/lang/reflect/q;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Lk8/c;

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/i;->c:Lk8/c;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Lk8/c;Lk8/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk8/c<",
            "*>;",
            "Lk8/c<",
            "*>;I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/i;->a:Lk8/c;

    .line 8
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/i;->c:Lk8/c;

    .line 9
    invoke-interface {p2}, Lk8/c;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/i;->b:Ljava/lang/String;

    .line 10
    iput p3, p0, Lorg/aspectj/internal/lang/reflect/i;->d:I

    return-void
.end method


# virtual methods
.method public a()Lk8/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk8/c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/i;->a:Lk8/c;

    return-object v0
.end method

.method public f()Lk8/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk8/c<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/i;->c:Lk8/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/i;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/aspectj/internal/lang/reflect/i;->d:I

    return v0
.end method
