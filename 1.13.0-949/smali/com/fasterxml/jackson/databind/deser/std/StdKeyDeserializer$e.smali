.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;
.super Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# annotations
.annotation runtime Lc2/a;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field private static final e:J = 0x1L

.field private static final f:Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;

.field private static final g:Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;->f:Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;->g:Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;)V

    return-void
.end method

.method public static h(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;->f:Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;

    return-object p0

    .line 3
    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 4
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;->g:Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$e;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method
