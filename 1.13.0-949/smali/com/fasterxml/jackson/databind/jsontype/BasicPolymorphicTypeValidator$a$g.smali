.class Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$g;
.super Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;
.source "BasicPolymorphicTypeValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->l()Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$g;->a:Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    return p1
.end method
