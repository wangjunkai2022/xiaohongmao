.class final Lcom/fasterxml/jackson/databind/ser/impl/c$e;
.super Lcom/fasterxml/jackson/databind/ser/impl/c;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/impl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
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

.field private final c:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/c;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/c;",
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
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$e;->b:Ljava/lang/Class;

    .line 3
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$e;->c:Lcom/fasterxml/jackson/databind/g;

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;
    .locals 7
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

    new-instance v6, Lcom/fasterxml/jackson/databind/ser/impl/c$a;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$e;->b:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$e;->c:Lcom/fasterxml/jackson/databind/g;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/impl/c$a;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/c;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V

    return-object v6
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$e;->b:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$e;->c:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
