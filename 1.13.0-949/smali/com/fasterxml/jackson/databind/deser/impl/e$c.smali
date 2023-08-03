.class Lcom/fasterxml/jackson/databind/deser/impl/e$c;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;
.source "JDKValueInstantiators.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final c:J = 0x2L

.field public static final d:Lcom/fasterxml/jackson/databind/deser/impl/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/e$c;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/impl/e$c;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/impl/e$c;->d:Lcom/fasterxml/jackson/databind/deser/impl/e$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public canCreateUsingDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canInstantiate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method
