.class public Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;
.super Ljava/lang/Object;
.source "CoercionConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final c:J = 0x1L

.field private static final d:I


# instance fields
.field protected a:Ljava/lang/Boolean;

.field protected final b:[Lcom/fasterxml/jackson/databind/cfg/CoercionAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->values()[Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->d:I

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->b:[Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->a:Ljava/lang/Boolean;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->a:Ljava/lang/Boolean;

    .line 6
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->b:[Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->b:[Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-void
.end method


# virtual methods
.method public findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->b:[Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAcceptBlankAsEmpty()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;->a:Ljava/lang/Boolean;

    return-object v0
.end method
