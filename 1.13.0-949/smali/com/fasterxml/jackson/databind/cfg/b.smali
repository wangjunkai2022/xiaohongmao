.class public abstract Lcom/fasterxml/jackson/databind/cfg/b;
.super Ljava/lang/Object;
.source "ConfigOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/cfg/b$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

.field protected b:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field protected c:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field protected d:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

.field protected e:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

.field protected f:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;

.field protected g:Ljava/lang/Boolean;

.field protected h:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/b;->a:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->a:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 4
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/b;->b:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->b:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 5
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/b;->c:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->c:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 6
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/b;->d:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->d:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 7
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/b;->e:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->e:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    .line 8
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/b;->f:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->f:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;

    .line 9
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/b;->g:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->g:Ljava/lang/Boolean;

    .line 10
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/cfg/b;->h:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/b;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public static empty()Lcom/fasterxml/jackson/databind/cfg/b;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/b$a;->i:Lcom/fasterxml/jackson/databind/cfg/b$a;

    return-object v0
.end method


# virtual methods
.method public getFormat()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->a:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    return-object v0
.end method

.method public getIgnorals()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->d:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-object v0
.end method

.method public getInclude()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->b:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0
.end method

.method public getIncludeAsProperty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->c:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0
.end method

.method public getIsIgnoredType()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMergeable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->e:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    return-object v0
.end method

.method public getVisibility()Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/b;->f:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;

    return-object v0
.end method
