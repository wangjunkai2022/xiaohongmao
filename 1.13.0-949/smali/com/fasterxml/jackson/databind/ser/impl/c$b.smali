.class final Lcom/fasterxml/jackson/databind/ser/impl/c$b;
.super Lcom/fasterxml/jackson/databind/ser/impl/c;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/impl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final b:Lcom/fasterxml/jackson/databind/ser/impl/c$b;

.field public static final c:Lcom/fasterxml/jackson/databind/ser/impl/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/c$b;-><init>(Z)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/impl/c$b;->b:Lcom/fasterxml/jackson/databind/ser/impl/c$b;

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/c$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/c$b;-><init>(Z)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/impl/c$b;->c:Lcom/fasterxml/jackson/databind/ser/impl/c$b;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;
    .locals 1
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

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/c$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c$e;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/c;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V

    return-object v0
.end method

.method public m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method
