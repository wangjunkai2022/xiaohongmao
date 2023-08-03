.class public abstract Lcom/fasterxml/jackson/databind/ext/a;
.super Ljava/lang/Object;
.source "Java7Handlers.java"


# static fields
.field private static final a:Lcom/fasterxml/jackson/databind/ext/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lcom/fasterxml/jackson/databind/ext/b;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/g;->n(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ext/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sput-object v0, Lcom/fasterxml/jackson/databind/ext/a;->a:Lcom/fasterxml/jackson/databind/ext/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/fasterxml/jackson/databind/ext/a;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/ext/a;->a:Lcom/fasterxml/jackson/databind/ext/a;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation
.end method
