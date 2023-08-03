.class public Lcom/fasterxml/jackson/databind/jsonFormatVisitors/b$a;
.super Ljava/lang/Object;
.source "JsonArrayFormatVisitor.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jsonFormatVisitors/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Lcom/fasterxml/jackson/databind/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/l;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/b$a;->a:Lcom/fasterxml/jackson/databind/l;

    return-void
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/databind/l;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/b$a;->a:Lcom/fasterxml/jackson/databind/l;

    return-object v0
.end method

.method public c(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/d;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    return-void
.end method

.method public d(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    return-void
.end method

.method public n(Lcom/fasterxml/jackson/databind/l;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/b$a;->a:Lcom/fasterxml/jackson/databind/l;

    return-void
.end method
