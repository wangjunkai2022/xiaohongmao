.class public final synthetic Lcom/fasterxml/jackson/databind/introspect/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/fasterxml/jackson/databind/introspect/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/r;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/r;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/r;->a:Lcom/fasterxml/jackson/databind/introspect/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
