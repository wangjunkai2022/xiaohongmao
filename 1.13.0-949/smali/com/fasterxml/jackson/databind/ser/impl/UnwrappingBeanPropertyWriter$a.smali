.class Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter$a;
.super Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f$a;
.source "UnwrappingBeanPropertyWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/k;Lcom/fasterxml/jackson/databind/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/k;

.field final synthetic c:Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/k;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter$a;->c:Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter$a;->b:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/k;

    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f$a;-><init>(Lcom/fasterxml/jackson/databind/l;)V

    return-void
.end method


# virtual methods
.method public e(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter$a;->b:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/k;

    return-object p1
.end method
