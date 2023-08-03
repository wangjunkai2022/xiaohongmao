.class public Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;
.super Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;
.source "InvalidTypeIdException.java"


# static fields
.field private static final l:J = 0x1L


# instance fields
.field protected final j:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->j:Lcom/fasterxml/jackson/databind/JavaType;

    .line 3
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->k:Ljava/lang/String;

    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBaseType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->j:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->k:Ljava/lang/String;

    return-object v0
.end method
