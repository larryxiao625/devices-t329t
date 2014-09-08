.class Lcom/htc/fragment/widget/CarouselContentGallery;
.super Lcom/htc/fragment/widget/Gallery2;
.source "CarouselContentGallery.java"


# static fields
.field public static final HVGA:I = 0x0

.field public static final QVGA:I = 0x1

.field public static final WVGA:I = 0x2

.field private static sAngle:F

.field private static sDegree:F

.field private static sDegree_H:F

.field private static sSpacing:F


# instance fields
.field private cos:D

.field private d:I

.field private deg:F

.field private mAlbumHeight:I

.field private mAlbumHeight_H:F

.field private mAlbumWidth:I

.field private mAlbumWidth_H:F

.field private mCamera:Landroid/graphics/Camera;

.field private mLeftX:I

.field private mLoc:[I

.field private mResolution:I

.field private mStartX:I

.field private mtx:Landroid/graphics/Matrix;

.field private mtxRotate:Landroid/graphics/Matrix;

.field private mtxTranslate:Landroid/graphics/Matrix;

.field private needCheckBg:Z

.field private rad:D

.field private sin:D

.field private tmp:D

.field private x:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/high16 v0, 0x42f0

    sput v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sAngle:F

    .line 38
    const/high16 v0, 0x4334

    sget v1, Lcom/htc/fragment/widget/CarouselContentGallery;->sAngle:F

    sub-float/2addr v0, v1

    sput v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree:F

    .line 39
    sget v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sput v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree_H:F

    .line 40
    const/high16 v0, 0x4040

    sput v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sSpacing:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 56
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/Gallery2;-><init>(Landroid/content/Context;)V

    .line 43
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 44
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight:I

    .line 48
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    .line 50
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    .line 51
    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    .line 104
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselHost;->BACKGROUND_DEBUG:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->needCheckBg:Z

    .line 138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    .line 57
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 44
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight:I

    .line 48
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    .line 50
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    .line 51
    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    .line 104
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselHost;->BACKGROUND_DEBUG:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->needCheckBg:Z

    .line 138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    .line 62
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/Gallery2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 44
    iput v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight:I

    .line 48
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    .line 50
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    .line 51
    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    .line 104
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselHost;->BACKGROUND_DEBUG:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->needCheckBg:Z

    .line 138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    .line 67
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->init()V

    .line 68
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselContentGallery;->setSpacing(I)V

    .line 72
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselContentGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 73
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselContentGallery;->setFastScrollEnabled(Z)V

    .line 74
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mResolution:I

    .line 76
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 79
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x2aa

    if-eq v2, v5, :cond_0

    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "4.0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v5, 0x1e0

    if-gt v2, v5, :cond_3

    :cond_0
    move v0, v4

    .line 82
    .local v0, disableCubeAni:Z
    :goto_0
    invoke-static {}, Lcom/htc/fragment/widget/CarouselUtil;->isLiteDevice()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 83
    :cond_1
    iput v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->ANITYPE_DEFINED:I

    .line 84
    iput v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->ANITYPE_CURRENT:I

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->checkAnimationModeAndType()V

    .line 88
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 91
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselContentGallery;->setDrawingCacheEnabled(Z)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselContentGallery;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 93
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselContentGallery;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 95
    sget v2, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree_H:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->rad:D

    .line 96
    iget-wide v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->rad:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->sin:D

    .line 97
    iget-wide v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->rad:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->cos:D

    .line 101
    return-void

    .end local v0           #disableCubeAni:Z
    :cond_3
    move v0, v3

    .line 79
    goto :goto_0
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 11
    .parameter "child"
    .parameter "t"

    .prologue
    const/high16 v3, 0x3f00

    const-wide/high16 v9, 0x3ff0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 157
    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->ANITYPE_CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 285
    :goto_0
    return v0

    .line 160
    :cond_0
    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    if-gez v2, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 167
    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth_H:F

    .line 168
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight:I

    .line 169
    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    .line 172
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->getLocationOnScreen([I)V

    .line 173
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 178
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtx:Landroid/graphics/Matrix;

    .line 180
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLoc:[I

    aget v0, v2, v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    .line 183
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_2

    .line 188
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    .line 189
    sget v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree:F

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    .line 196
    const/high16 v0, 0x42b4

    sget v2, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree_H:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    .line 206
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth_H:F

    float-to-double v2, v0

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    neg-double v4, v4

    iget-wide v6, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->sin:D

    div-double/2addr v4, v6

    add-double/2addr v4, v9

    mul-double/2addr v2, v4

    neg-double v2, v2

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->x:F

    .line 207
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth_H:F

    float-to-double v2, v0

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->sin:D

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->cos:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->z:F

    .line 210
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 211
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    neg-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 212
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 213
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 214
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->x:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 215
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 218
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 219
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->z:F

    neg-float v2, v2

    invoke-virtual {v0, v8, v8, v2}, Landroid/graphics/Camera;->translate(FFF)V

    .line 220
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 221
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 222
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 223
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 225
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtx:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move v0, v1

    .line 227
    goto/16 :goto_0

    .line 231
    :cond_2
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_3

    .line 236
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    .line 237
    sget v0, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree:F

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    .line 244
    const/high16 v0, 0x42b4

    sget v2, Lcom/htc/fragment/widget/CarouselContentGallery;->sDegree_H:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    .line 254
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth_H:F

    float-to-double v2, v0

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    neg-double v4, v4

    iget-wide v6, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->sin:D

    div-double/2addr v4, v6

    add-double/2addr v4, v9

    mul-double/2addr v2, v4

    neg-double v2, v2

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->d:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->x:F

    .line 255
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth_H:F

    float-to-double v2, v0

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->sin:D

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->tmp:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->cos:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->z:F

    .line 258
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 259
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->deg:F

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 260
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 261
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    neg-float v2, v2

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 262
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->x:F

    sub-float v2, v8, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 263
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 266
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 267
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->z:F

    neg-float v2, v2

    invoke-virtual {v0, v8, v8, v2}, Landroid/graphics/Camera;->translate(FFF)V

    .line 268
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 269
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    neg-float v2, v2

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 270
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumHeight_H:F

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 271
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 273
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtx:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxTranslate:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mtxRotate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move v0, v1

    .line 275
    goto/16 :goto_0

    .line 280
    :cond_3
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    if-eq v0, v2, :cond_4

    .line 281
    const-string v0, "naeco"

    const-string v2, "!!!!!!!!!!"

    invoke-static {v0, v2}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "naeco"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLeftX="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/ mStartX="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mAlbumWidth="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", w="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftX:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    if-ge v0, v4, :cond_5

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    sub-int/2addr v0, v4

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 285
    goto/16 :goto_0

    .line 282
    :cond_5
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    add-int/2addr v0, v4

    goto :goto_1
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v6, 0x0

    .line 338
    if-eqz p1, :cond_1

    iget v7, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mItemCount:I

    add-int/lit8 v3, v7, -0x1

    .line 339
    .local v3, extremeItemPosition:I
    :goto_0
    iget v7, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mFirstPosition:I

    sub-int v7, v3, v7

    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/CarouselContentGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 342
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_4

    .line 343
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/CarouselContentGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 344
    .local v4, firstChild:Landroid/view/View;
    if-nez v4, :cond_2

    move v6, p2

    .line 369
    .end local v4           #firstChild:Landroid/view/View;
    :cond_0
    :goto_1
    return v6

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v6

    .line 338
    goto :goto_0

    .line 347
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    .restart local v4       #firstChild:Landroid/view/View;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    mul-int v2, v3, v7

    .line 353
    .end local v4           #firstChild:Landroid/view/View;
    .local v2, extremeChildCenter:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->getCenterOfGallery()I

    move-result v5

    .line 355
    .local v5, galleryCenter:I
    if-eqz p1, :cond_5

    .line 356
    if-le v2, v5, :cond_0

    .line 367
    :cond_3
    sub-int v0, v5, v2

    .line 369
    .local v0, centerDifference:I
    if-eqz p1, :cond_6

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 350
    .end local v0           #centerDifference:I
    .end local v2           #extremeChildCenter:I
    .end local v5           #galleryCenter:I
    :cond_4
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .restart local v2       #extremeChildCenter:I
    goto :goto_2

    .line 361
    .restart local v5       #galleryCenter:I
    :cond_5
    if-lt v2, v5, :cond_3

    goto :goto_1

    .line 369
    .restart local v0       #centerDifference:I
    :cond_6
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1
.end method

.method public getResolution()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mResolution:I

    return v0
.end method

.method layout(IZ)V
    .locals 1
    .parameter "delta"
    .parameter "animate"

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery2;->layout(IZ)V

    .line 111
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->needCheckBg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselContentGallery;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->ANITYPE_DEFINED:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 112
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselContentGallery;->setBackgroundColor(I)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->needCheckBg:Z

    .line 115
    :cond_0
    return-void
.end method

.method makeAndAddView(IIIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 301
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mDataChanged:Z

    if-nez v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mRecycler:Lcom/htc/fragment/widget/Gallery2$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v1

    .line 304
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 310
    .local v7, childLeft:I
    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mRightMost:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mRightMost:I

    .line 311
    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftMost:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mLeftMost:I

    .line 315
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v2, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->checkAndDetachViewFromParent(Landroid/view/View;)Z

    move-result v8

    .line 318
    .local v8, isInHook:Z
    if-nez v8, :cond_0

    :goto_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselContentGallery;->setUpChild(Landroid/view/View;IIZZ)V

    move-object v6, v1

    .line 334
    .end local v1           #child:Landroid/view/View;
    .end local v7           #childLeft:I
    .local v6, child:Landroid/view/View;
    :goto_1
    return-object v6

    .end local v6           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    .restart local v7       #childLeft:I
    :cond_0
    move v5, v0

    .line 318
    goto :goto_0

    .line 327
    .end local v1           #child:Landroid/view/View;
    .end local v7           #childLeft:I
    .end local v8           #isInHook:Z
    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 328
    .restart local v1       #child:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v2, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->checkAndDetachViewFromParent(Landroid/view/View;)Z

    move-result v8

    .line 332
    .restart local v8       #isInHook:Z
    if-nez v8, :cond_2

    :goto_2
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselContentGallery;->setUpChild(Landroid/view/View;IIZZ)V

    move-object v6, v1

    .line 334
    .end local v1           #child:Landroid/view/View;
    .restart local v6       #child:Landroid/view/View;
    goto :goto_1

    .end local v6           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    :cond_2
    move v5, v0

    .line 332
    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery2;->onMeasure(II)V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mStartX:I

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentGallery;->mAlbumWidth:I

    .line 136
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method
