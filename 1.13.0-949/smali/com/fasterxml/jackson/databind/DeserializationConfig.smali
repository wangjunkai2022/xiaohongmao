.class public final Lcom/fasterxml/jackson/databind/DeserializationConfig;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.source "DeserializationConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<",
        "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
        "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final y:J = 0x2L

.field private static final z:I


# instance fields
.field protected final p:Lcom/fasterxml/jackson/databind/util/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/l<",
            "Lcom/fasterxml/jackson/databind/deser/f;",
            ">;"
        }
    .end annotation
.end field

.field protected final q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

.field protected final r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

.field protected final s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

.field protected final t:I

.field protected final u:I

.field protected final v:I

.field protected final w:I

.field protected final x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->z:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;J)V

    .line 24
    iput p4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 25
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 26
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 27
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 28
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 29
    iput p5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 30
    iput p6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 31
    iput p7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 32
    iput p8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 84
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 85
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 86
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 87
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 88
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 89
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 90
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 91
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 92
    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    .line 44
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 45
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 46
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 47
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 48
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 49
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 50
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 51
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 52
    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 64
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 65
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 66
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 67
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 68
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 69
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 70
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 71
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 72
    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    .line 104
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 105
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 106
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 107
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 108
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 109
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 110
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 111
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 112
    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V

    .line 114
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 115
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 116
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 117
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 118
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 119
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 120
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 121
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 122
    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->g:Lcom/fasterxml/jackson/databind/jsontype/a;

    new-instance v6, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    invoke-direct {v6}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;)V

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/a;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/a;)V

    .line 34
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 35
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 36
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 37
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 38
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 39
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 40
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 41
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 42
    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 12
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 13
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 14
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 15
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 16
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 17
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 18
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 19
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 20
    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 54
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 55
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 56
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 57
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 58
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 59
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 60
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 61
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 62
    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/util/l<",
            "Lcom/fasterxml/jackson/databind/deser/f;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 74
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 75
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 76
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 77
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 78
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 79
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 80
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 81
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 82
    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V

    .line 94
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 95
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 96
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 97
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 98
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 99
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 100
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 101
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 102
    iget p1, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    new-instance v6, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    invoke-direct {v6}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 2
    sget p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->z:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    .line 4
    sget-object p2, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 6
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 8
    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 9
    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 10
    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    return-void
.end method

.method private varargs d([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 1
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 2
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 3
    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 4
    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    .line 5
    array-length v5, p1

    const/4 v6, 0x0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, p1, v1

    .line 6
    invoke-interface {v2}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v3

    or-int/2addr v8, v3

    or-int/2addr v9, v3

    .line 7
    instance-of v3, v2, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v3, :cond_0

    .line 8
    check-cast v2, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v2

    or-int/2addr v6, v2

    or-int/2addr v7, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    if-ne v0, v8, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    if-ne v0, v9, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    if-ne v0, v6, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    if-ne v0, v7, :cond_2

    move-object v10, p0

    goto :goto_1

    :cond_2
    new-instance v10, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    move-object v0, v10

    move-object v1, p0

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v10
.end method

.method private varargs h([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 1
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 2
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 3
    iget v3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 4
    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    .line 5
    array-length v5, p1

    const/4 v6, 0x0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, p1, v1

    .line 6
    invoke-interface {v2}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v3

    not-int v4, v3

    and-int/2addr v8, v4

    or-int/2addr v9, v3

    .line 7
    instance-of v3, v2, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v3, :cond_0

    .line 8
    check-cast v2, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v2

    not-int v3, v2

    and-int/2addr v6, v3

    or-int/2addr v7, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    if-ne v0, v8, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    if-ne v0, v9, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    if-ne v0, v6, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    if-ne v0, v7, :cond_2

    move-object v10, p0

    goto :goto_1

    :cond_2
    new-instance v10, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    move-object v0, v10

    move-object v1, p0

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v10
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->c(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic b(J)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->e(J)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method protected final c(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    :goto_0
    return-object v0
.end method

.method protected final e(J)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 10

    new-instance v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    return-object v9
.end method

.method public findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->findCoercion(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    return-object p1
.end method

.method public findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->r:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    return-object p1
.end method

.method public findTypeDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/a;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/a;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/util/Collection;

    move-result-object v2

    .line 6
    :cond_1
    invoke-interface {v1, p0, p1, v2}, Lcom/fasterxml/jackson/databind/jsontype/e;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/b;

    move-result-object p1

    return-object p1
.end method

.method public getConstructorDetector()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->DEFAULT:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    :cond_0
    return-object v0
.end method

.method public final getDeserializationFeatures()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    return v0
.end method

.method public final getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    return-object v0
.end method

.method public getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/l<",
            "Lcom/fasterxml/jackson/databind/deser/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    return-object v0
.end method

.method public final hasDeserializationFeatures(I)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hasSomeOfFeatures(I)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected i()Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    return-object v0
.end method

.method public initialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->C1(II)Lcom/fasterxml/jackson/core/JsonParser;

    .line 3
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->B1(II)Lcom/fasterxml/jackson/core/JsonParser;

    :cond_1
    return-object p1
.end method

.method public initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    if-eqz v0, :cond_0

    .line 6
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->C1(II)Lcom/fasterxml/jackson/core/JsonParser;

    .line 7
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    if-eqz v0, :cond_1

    .line 8
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->B1(II)Lcom/fasterxml/jackson/core/JsonParser;

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->T1(Lcom/fasterxml/jackson/core/c;)V

    :cond_2
    return-object p1
.end method

.method public introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/l;->forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p1

    return-object p1
.end method

.method public introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/l;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p1

    return-object p1
.end method

.method public introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0, p2}, Lcom/fasterxml/jackson/databind/introspect/l;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p1

    return-object p1
.end method

.method public introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/l;->forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p1

    return-object p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;Lcom/fasterxml/jackson/core/JsonFactory;)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 4
    iget p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 5
    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p1

    return p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final requiresFullValue()Z
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_TRAILING_TOKENS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result v0

    return v0
.end method

.method public useRootWrapping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->h:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 3
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    return v0
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 11
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int v7, v0, v1

    .line 12
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int v8, v0, p1

    .line 13
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    if-ne p1, v7, :cond_0

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    if-ne p1, v8, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 14
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 15
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->d([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1

    .line 16
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v1

    or-int v9, v0, v1

    .line 17
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result p1

    or-int v10, v0, p1

    .line 18
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    if-ne p1, v10, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 10

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    or-int v5, v0, p1

    .line 6
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    if-ne v5, p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public varargs with(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 7
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    .line 8
    array-length v0, p2

    const/4 v1, 0x0

    move v6, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object p1, p2, v1

    .line 9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    or-int/2addr v6, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    if-ne v6, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->s:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 22
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->j:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    :goto_0
    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/jsontype/a;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->g:Lcom/fasterxml/jackson/databind/jsontype/a;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/a;)V

    :goto_0
    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->q:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 20
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/a;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/a;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 6
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 7
    array-length v2, p1

    const/4 v3, 0x0

    move v9, v0

    move v10, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, p1, v3

    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    or-int/2addr v9, v0

    or-int/2addr v10, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    if-ne p1, v10, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iget v12, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->d([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 13
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    .line 14
    array-length v3, p1

    move v11, v0

    move v12, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 15
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v0

    or-int/2addr v11, v0

    or-int/2addr v12, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    if-ne p1, v11, :cond_2

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    if-ne p1, v12, :cond_2

    move-object p1, p0

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v7, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v0, p1, v2

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v0

    or-int/2addr v7, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    if-ne v7, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public withHandler(Lcom/fasterxml/jackson/databind/deser/f;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/l;->a(Lcom/fasterxml/jackson/databind/util/l;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    new-instance v1, Lcom/fasterxml/jackson/databind/util/l;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/util/l;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/l;)V

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/l;)V

    return-object v0
.end method

.method public withNoProblemHandlers()Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->p:Lcom/fasterxml/jackson/databind/util/l;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/l;)V

    return-object v0
.end method

.method public withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->h:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_1

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->h:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public bridge synthetic withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->i:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 7
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int v7, v0, v1

    .line 8
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int v8, v0, p1

    .line 9
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    if-ne p1, v7, :cond_0

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    if-ne p1, v8, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 10
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 11
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->h([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v1

    not-int v1, v1

    and-int v9, v0, v1

    .line 13
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result p1

    or-int v10, v0, p1

    .line 14
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    if-ne p1, v10, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 10

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int v5, v0, p1

    .line 2
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    if-ne v5, p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public varargs without(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    .line 4
    array-length v0, p2

    const/4 v1, 0x0

    move v6, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object p1, p2, v1

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr v6, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    if-ne v6, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    .line 6
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    .line 7
    array-length v2, p1

    const/4 v3, 0x0

    move v9, v0

    move v10, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, p1, v3

    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    not-int v1, v0

    and-int/2addr v9, v1

    or-int/2addr v10, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    if-ne p1, v10, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iget v12, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->h([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    .line 13
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    .line 14
    array-length v3, p1

    move v11, v0

    move v12, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 15
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v0

    not-int v2, v0

    and-int/2addr v11, v2

    or-int/2addr v12, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    if-ne p1, v11, :cond_2

    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    if-ne p1, v12, :cond_2

    move-object p1, p0

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v7, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v0, p1, v2

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v0

    not-int v0, v0

    and-int/2addr v7, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->t:I

    if-ne v7, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->u:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->v:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->w:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->x:I

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method
