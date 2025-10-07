'use client'

import React, { useState } from 'react'
import { Label } from '../ui/label'
import { Input } from '../ui/input'
import { Button } from '../ui/button'
import { NegaPositionalToBaseInt } from '@/lib/converter'

export default function Converter() {
    const [result, setResult] = useState<string | null>(null)
    const [digitsInput, setDigitsInput] = useState<string>("")

    const handleConvert = () => {
        if (digitsInput.length > 0) {
            const num = Number(digitsInput)
            if (Number.isNaN(num)) {
                setResult("Некорректное число")
                return
            }
            else if (Number.isInteger(num)) {
                const res = NegaPositionalToBaseInt(num)
                setResult(res)
            }
            else {
                setResult("float")
            }
        }
    }
    return (
        <>
            <section className='pt-15 '>
                <div className='space-y-3'>
                    <div className='space-y-2'>
                        <Label htmlFor='input'>
                            Перевести
                        </Label>
                        <Input id="input" placeholder='123123' value={digitsInput} onChange={(e) => setDigitsInput(e.target.value)} />
                    </div>
                    <div className='flex w-full gap-4'>
                        <div className='flex gap-4 w-1/2'>
                            <div className='flex gap-2'>
                                <Label htmlFor='input'>
                                    Из
                                </Label>
                                <Input id="input" placeholder='123123' value={10} disabled />
                            </div>
                            <div className='flex gap-2'>
                                <Label htmlFor='input'>
                                    В
                                </Label>
                                <Input id="input" placeholder='2' value={-10} disabled />
                            </div>
                        </div>
                        <Button className='w-1/2' onClick={handleConvert}>Перевести</Button>
                    </div>
                    <div className='w-full border' />
                </div>
            </section>
            <section className='pt-1'>
                {result &&
                    <span>результат: {result}</span>
                }
            </section>
        </>
    )
}
