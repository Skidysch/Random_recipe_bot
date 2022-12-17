from aiogram import Bot, types
from aiogram.types import Message, CallbackQuery, InputMedia, InputMediaPhoto

from core.utils.dbconnect import Request
from core.keyboards.inline_keyboards import get_start_keyboard, get_shuffle_keyboard


async def start_command(message: Message, bot: Bot):
    await message.answer(text='Hi there, if you struggling with what you wanna cook, '
                              'just press the button below:)',
                         reply_markup=get_start_keyboard())


async def shuffle_command(event: Message | CallbackQuery, bot: Bot, request: Request):
    recipe = await request.get_random_recipe()
    recipe_caption = f'{recipe["recipe_name"]}\r\n-----\r\n{recipe["recipe_description"]}' \
                     f'\r\n-----\r\n<b>Would you like to cook this recipe or we will look for another one?</b>'

    match type(event):
        case types.Message:
            await event.answer_photo(
                photo=recipe['recipe_picture'],
                caption=recipe_caption,
                parse_mode='HTML',
                reply_markup=get_shuffle_keyboard(url=recipe['recipe_link'])
            )
        case types.CallbackQuery:
            await event.message.answer_photo(
                photo=recipe['recipe_picture'],
                caption=recipe_caption,
                parse_mode='HTML',
                reply_markup=get_shuffle_keyboard(url=recipe['recipe_link'])
            )
            await event.answer()


async def reshuffle_command(call: CallbackQuery, bot: Bot, request: Request):
    recipe = await request.get_random_recipe()
    recipe_caption = f'{recipe["recipe_name"]}\r\n-----\r\n{recipe["recipe_description"]}' \
                     f'\r\n-----\r\n<b>Would you like to cook this recipe or we will look for another one?</b>'
    photo = InputMediaPhoto(media=recipe['recipe_picture'])
    recipe_url = recipe['recipe_link']

    await call.message.edit_media(
        media=photo
    )
    await call.message.edit_caption(
        caption=recipe_caption,
        parse_mode='HTML',
        reply_markup=get_shuffle_keyboard(url=recipe_url)
    )
