.class public Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
.super Lcom/fasterxml/jackson/databind/cfg/b;
.source "MutableConfigOverride.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final i:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/cfg/b;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/b;-><init>(Lcom/fasterxml/jackson/databind/cfg/b;)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;-><init>(Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;)V

    return-object v0
.end method

.method public setFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/b;->a:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    return-object p0
.end method

.method public setIgnorals(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/b;->d:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-object p0
.end method

.method public setInclude(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/b;->b:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object p0
.end method

.method public setIncludeAsProperty(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/b;->c:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object p0
.end method

.method public setIsIgnoredType(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/b;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMergeable(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/b;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSetterInfo(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/b;->e:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    return-object p0
.end method

.method public setVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/b;->f:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;

    return-object p0
.end method
