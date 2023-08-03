.class final Lcom/fasterxml/jackson/databind/ser/impl/c$a;
.super Lcom/fasterxml/jackson/databind/ser/impl/c;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/impl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/c;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/c;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/c;)V

    .line 2
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->b:Ljava/lang/Class;

    .line 3
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->d:Lcom/fasterxml/jackson/databind/g;

    .line 4
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->c:Ljava/lang/Class;

    .line 5
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->e:Lcom/fasterxml/jackson/databind/g;

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/c;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/impl/c$f;

    .line 1
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->b:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->d:Lcom/fasterxml/jackson/databind/g;

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/impl/c$f;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->c:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->e:Lcom/fasterxml/jackson/databind/g;

    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/impl/c$f;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;

    invoke-direct {v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c$f;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    .line 4
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/impl/c$c;

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/c$c;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/c;[Lcom/fasterxml/jackson/databind/ser/impl/c$f;)V

    return-object p1
.end method

.method public m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->b:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->d:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->c:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$a;->e:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
