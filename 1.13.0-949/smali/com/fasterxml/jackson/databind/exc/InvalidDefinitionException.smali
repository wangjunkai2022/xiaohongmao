.class public Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "InvalidDefinitionException.java"


# instance fields
.field protected final i:Lcom/fasterxml/jackson/databind/JavaType;

.field protected transient j:Lcom/fasterxml/jackson/databind/b;

.field protected transient k:Lcom/fasterxml/jackson/databind/introspect/k;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 6
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->i:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->j:Lcom/fasterxml/jackson/databind/b;

    .line 8
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->k:Lcom/fasterxml/jackson/databind/introspect/k;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->i:Lcom/fasterxml/jackson/databind/JavaType;

    .line 15
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->j:Lcom/fasterxml/jackson/databind/b;

    .line 16
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->k:Lcom/fasterxml/jackson/databind/introspect/k;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->i:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->j:Lcom/fasterxml/jackson/databind/b;

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->k:Lcom/fasterxml/jackson/databind/introspect/k;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->i:Lcom/fasterxml/jackson/databind/JavaType;

    .line 11
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->j:Lcom/fasterxml/jackson/databind/b;

    .line 12
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->k:Lcom/fasterxml/jackson/databind/introspect/k;

    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)V

    return-object v0
.end method


# virtual methods
.method public getBeanDescription()Lcom/fasterxml/jackson/databind/b;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->j:Lcom/fasterxml/jackson/databind/b;

    return-object v0
.end method

.method public getProperty()Lcom/fasterxml/jackson/databind/introspect/k;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->k:Lcom/fasterxml/jackson/databind/introspect/k;

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->i:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method
